<?php
/**
 * @file
 * Plugin to handle the 'node' content type which allows individual nodes
 * to be embedded into a panel.
 */

/**
 * Plugins are described by creating a $plugin array which will be used
 * by the system that includes this file.
 */
$plugin = array(
  'title' => t('Node from UUID'),
  'single' => TRUE,
  'defaults' => array(
    'uuid' => '',
    'links' => TRUE,
    'leave_node_title' => FALSE,
    'identifier' => '',
    'build_mode' => 'teaser',
  ),
  'icon' => 'icon_node.png',
  'description' => t('Add a node from your site as content - referenced by the UUID.'),
  'category' => t('Custom'),
  'render callback' => 'wetkit_core_node_content_type_render',
  'edit form' => 'wetkit_core_node_content_type_edit_form',
  'top level' => TRUE,
  'js' => array('misc/autocomplete.js'),
);

/**
 * Output function for the 'node' content type.
 *
 * Outputs a node based on the module and delta supplied in the configuration.
 */
function wetkit_core_node_content_type_render($subtype, $conf, $panel_args) {
  if (!isset($conf['uuid'])) {
    return;
  }
  $uuid = $conf['uuid'];
  $block = new stdClass();

  foreach (explode('/', $_GET['q']) as $id => $arg) {
    $uuid = str_replace("%$id", $arg, $uuid);
  }

  foreach ($panel_args as $id => $arg) {
    if (is_string($arg)) {
      $uuid = str_replace("@$id", $arg, $uuid);
    }
  }

  $node = _wetkit_core_node_get_by_uuid($uuid);
  if (!$node) {
    return;
  }

  $nid = $node->nid;

  // Support node translation.
  if (module_exists('translation')) {
    if ($translations = module_invoke('translation', 'node_get_translations', $nid)) {
      if (isset($translations[$GLOBALS['language']->language])) {
        $nid = $translations[$GLOBALS['language']->language]->nid;
      }
    }
  }

  if (!node_access('view', $node)) {
    return;
  }

  // Don't store viewed node data on the node, this can mess up other
  // views of the node.
  $node = clone($node);

  $block->module = 'node';
  $block->delta = $node->nid;

  // Set block->title to the plain node title, then additionally set block->title_link to
  // the node url if required. The actual link is rendered in ctools_content_render().
  $block->title = check_plain($node->title);
  if (!empty($conf['link_node_title'])) {
    $block->title_link = 'node/' . $node->nid;
  }

  if (empty($conf['leave_node_title'])) {
    $node->title = NULL;
  }

  if (!empty($conf['identifier'])) {
    $node->ctools_template_identifier = $conf['identifier'];
  }

  // Handle existing configurations with the deprecated 'teaser' option.
  if (isset($conf['teaser'])) {
    $conf['build_mode'] = $conf['teaser'] ? 'teaser' : 'full';
  }

  $block->content = node_view($node, $conf['build_mode']);

  // Hide links if they've been suppressed.
  if (empty($conf['links'])) {
    $block->content['links']['#access'] = FALSE;
  }

  return $block;
}

/**
 * The form to add or edit a node as content.
 */
function wetkit_core_node_content_type_edit_form($form, &$form_state) {
  $conf = $form_state['conf'];

  $form['leave_node_title'] = array(
    '#type' => 'checkbox',
    '#default_value' => !empty($conf['leave_node_title']),
    '#title' => t('Leave node title'),
    '#description' => t('Advanced: if checked, do not touch the node title; this can cause the node title to appear twice unless your theme is aware of this.'),
  );

  $form['link_node_title'] = array(
    '#type' => 'checkbox',
    '#default_value' => !empty($conf['link_node_title']),
    '#title' => t('Link the node title to the node'),
    '#description' => t('Check this box if you would like your pane title to link to the node.'),
  );

  if ($form_state['op'] == 'add') {
    $form['nid'] = array(
      '#prefix' => '<div class="no-float">',
      '#title' => t('Enter the title or NID of a node'),
      '#description' => t('To use a NID from the URL, you may use %0, %1, ..., %N to get URL arguments. Or use @0, @1, @2, ..., @N to use arguments passed into the panel.'),
      '#type' => 'textfield',
      '#maxlength' => 512,
      '#autocomplete_path' => 'ctools/autocomplete/node',
      '#weight' => -10,
      '#suffix' => '</div>',
    );
  }
  else {
    $form['nid'] = array(
      '#type' => 'value',
      '#value' => $conf['nid'],
    );
  }
  $form['uuid'] = array(
    '#type' => 'value',
    '#value' => $conf['uuid'],
  );

  $form['links'] = array(
    '#type' => 'checkbox',
    '#default_value' => $conf['links'],
    '#title' => t('Include node links for "add comment", "read more" etc.'),
  );

  $form['identifier'] = array(
    '#type' => 'textfield',
    '#default_value' => !empty($conf['identifier']) ? $conf['identifier'] : '',
    '#title' => t('Template identifier'),
    '#description' => t('This identifier will be added as a template suggestion to display this node: node--panel--IDENTIFIER.tpl.php. Please see the Drupal theming guide for information about template suggestions.'),
  );

  $entity = entity_get_info('node');
  $build_mode_options = array();
  foreach ($entity['view modes'] as $mode => $option) {
    $build_mode_options[$mode] = $option['label'];
  }

  // Handle existing configurations with the deprecated 'teaser' option.
  // Also remove the teaser key from the form_state.
  if (isset($conf['teaser']) || !isset($conf['build_mode'])) {
    unset($form_state['conf']['teaser']);
    $conf['build_mode'] = $conf['teaser'] ? 'teaser' : 'full';
  }
  $form['build_mode'] = array(
    '#title' => t('Build mode'),
    '#type' => 'select',
    '#description' => t('Select a build mode for this node.'),
    '#options' => $build_mode_options,
    '#default_value' => $conf['build_mode'],
  );
  return $form;
}

/**
 * Validate the node selection.
 */
function wetkit_core_node_content_type_edit_form_validate(&$form, &$form_state) {
  if ($form_state['op'] != 'add') {
    return;
  }

  $nid = $form_state['values']['nid'];
  $preg_matches = array();
  $match = preg_match('/\[id: (\d+)\]/', $nid, $preg_matches);
  if (!$match) {
    $match = preg_match('/^id: (\d+)/', $nid, $preg_matches);
  }

  if ($match) {
    $nid = $preg_matches[1];
  }
  if (is_numeric($nid)) {
    $node = db_query('SELECT nid, uuid, status FROM {node} WHERE nid = :nid', array(':nid' => $nid))->fetchObject();
  }
  else {
    $node = db_query('SELECT nid, uuid, status FROM {node} WHERE LOWER(title) = LOWER(:title)', array(':title' => $nid))->fetchObject();
  }
  if ($node) {
    if (!$node->uuid) {
      form_error($form['nid'], t('This node does not have a UUID'));
      return;
    }
    $form_state['values']['nid'] = $node->nid;
    $form_state['values']['uuid'] = $node->uuid;
  }

  if (!($node || preg_match('/^[@%]\d+$/', $nid)) || (empty($node->status) && !user_access('administer nodes'))) {
    form_error($form['nid'], t('Invalid node'));
  }
}

/**
 * Validate the node selection.
 */
function wetkit_core_node_content_type_edit_form_submit($form, &$form_state) {
  foreach (array('nid', 'uuid', 'links', 'leave_node_title', 'link_node_title', 'identifier', 'build_mode') as $key) {
    $form_state['conf'][$key] = $form_state['values'][$key];
  }
}

/**
 * Returns the administrative title for a node.
 */
function wetkit_core_node_content_type_admin_title($subtype, $conf) {
  if (!isset($conf['uuid'])) {
    return;
  }
  if (!is_numeric($conf['uuid'])) {
    return t('Node loaded from @var', array('@var' => $conf['uuid']));
  }

  $node = _wetkit_core_node_get_by_uuid($conf['uuid']);
  if ($node) {
    if (!empty($node->status) || user_access('administer nodes')) {
      return check_plain($node->title);
    }
    else {
      return t('Unpublished node @uuid', array('@uuid' => $conf['uuid']));
    }
  }
  else {
    return t('Deleted/missing node @uuid', array('@uuid' => $conf['uuid']));
  }
}

/**
 * Display the administrative information for a node pane.
 */
function wetkit_core_node_content_type_admin_info($subtype, $conf) {
  // Just render the node.
  return wetkit_core_node_content_type_render($subtype, $conf, array());
}

/**
 * Function to load the node by uuid.
 *
 * @param int $uuid
 *
 * @return array
 * The returned node object.
 */
function _wetkit_core_node_get_by_uuid($uuid) {
  $node = db_select('node', 'n')
          ->fields('n')
          ->condition('uuid', $uuid)
          ->execute()
          ->fetchAssoc();
  $nid = $node['nid'];
  return node_load($nid);
}
