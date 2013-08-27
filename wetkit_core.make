; WetKit Core Makefile

api = 2
core = 7.x

; Modules

projects[advanced_help][version] = 1.x-dev
projects[advanced_help][subdir] = contrib
projects[advanced_help][type] = module
projects[advanced_help][download][type] = git
projects[advanced_help][download][revision] = 26437d8
projects[advanced_help][download][branch] = 7.x-1.x

projects[apps][version] = 1.0-beta7
projects[apps][subdir] = contrib
projects[apps][patch][1790902] = http://drupal.org/files/1790902-check-last-modified-existing.patch

projects[better_formats][version] = 1.x-dev
projects[better_formats][subdir] = contrib
projects[better_formats][type] = module
projects[better_formats][download][type] = git
projects[better_formats][download][revision] = 3b4a8c9
projects[better_formats][download][branch] = 7.x-1.x

projects[ctools][version] = 1.x-dev
projects[ctools][subdir] = contrib
projects[ctools][download][type] = git
projects[ctools][download][revision] = e81da7a
projects[ctools][download][branch] = 7.x-1.x
projects[ctools][patch][1630820] = http://drupal.org/files/entity-field-value-1630820-45.patch
projects[ctools][patch][1277908] = http://drupal.org/files/ctools-uuids_for_exported_objects-1277908-118.patch

projects[date][version] = 2.6
projects[date][subdir] = contrib

projects[defaultconfig][version] = 1.0-alpha9
projects[defaultconfig][subdir] = contrib
projects[defaultconfig][patch][2008178] = http://drupal.org/files/defaultconfig-rebuild-filters-2008178-4_0.patch
projects[defaultconfig][patch][2043307] = http://drupal.org/files/defaultconfig_include_features_file.patch

projects[devel][version] = 1.3
projects[devel][subdir] = contrib

projects[diff][version] = 3.x-dev
projects[diff][subdir] = contrib
projects[diff][type] = module
projects[diff][download][type] = git
projects[diff][download][revision] = adb4304
projects[diff][download][branch] = 7.x-3.x

projects[entity][version] = 1.2
projects[entity][subdir] = contrib

projects[entityreference][version] = 1.0
projects[entityreference][subdir] = contrib

projects[entity_view_mode][version] = 1.x-dev
projects[entity_view_mode][subdir] = contrib
projects[entity_view_mode][type] = module
projects[entity_view_mode][download][type] = git
projects[entity_view_mode][download][revision] = a518484
projects[entity_view_mode][download][branch] = 7.x-1.x

projects[fape][version] = 1.x-dev
projects[fape][subdir] = contrib
projects[fape][download][type] = git
projects[fape][download][revision] = 1143ee2
projects[fape][download][branch] = 7.x-1.x

projects[features][version] = 2.0-rc3
projects[features][subdir] = contrib

projects[fences][version] = 1.x-dev
projects[fences][subdir] = contrib
projects[fences][type] = module
projects[fences][download][type] = git
projects[fences][download][revision] = 67206b5
projects[fences][download][branch] = 7.x-1.x

projects[field_group][version] = 1.1
projects[field_group][subdir] = contrib

projects[hierarchical_select][version] = 3.x-dev
projects[hierarchical_select][subdir] = contrib
projects[hierarchical_select][type] = module
projects[hierarchical_select][download][type] = git
projects[hierarchical_select][download][revision] = 1da92c0
projects[hierarchical_select][download][branch] = 7.x-3.x
projects[hierarchical_select][patch][1457252] = http://drupal.org/files/hierarchical_select-config_not_defined_1457252-2.patch
projects[hierarchical_select][patch][1649706] = http://drupal.org/files/hs-menu-with-taxonomy-fix.patch
projects[hierarchical_select][patch][1315192] = http://drupal.org/files/1315192-fix-syntax-error-8.patch
projects[hierarchical_select][patch][1587570] = http://drupal.org/files/hierarchical_select-remove-array-to-string-error.patch

projects[libraries][version] = 2.1
projects[libraries][subdir] = contrib

projects[link][version] = 1.1
projects[link][subdir] = contrib

projects[linkchecker][version] = 1.x-dev
projects[linkchecker][type] = module
projects[linkchecker][subdir] = contrib
projects[linkchecker][download][type] = git
projects[linkchecker][download][revision] = 0e7fc34
projects[linkchecker][download][branch] = 7.x-1.x

projects[menu_attributes][version] = 1.0-rc2
projects[menu_attributes][subdir] = contrib

projects[menu_block][version] = 2.x-dev
projects[menu_block][subdir] = contrib
projects[menu_block][download][type] = git
projects[menu_block][download][revision] = 32ab1cf
projects[menu_block][download][branch] = 7.x-2.x
projects[menu_block][patch][1967230] = http://drupal.org/files/menu_block_show_menu_items-1967230-06.patch

projects[password_policy][version] = 1.5
projects[password_policy][subdir] = contrib

projects[panelizer][version] = 3.x-dev
projects[panelizer][subdir] = contrib
projects[panelizer][download][type] = git
projects[panelizer][download][revision] = 1e050d3
projects[panelizer][download][branch] = 7.x-3.x
projects[panelizer][patch][2053721] = http://drupal.org/files/panelizer-clone-display-node-revisions-2053721-9_0.patch
projects[panelizer][patch][2039025] = http://drupal.org/files/panelizer-workbench-moderation-2039025-1.patch
projects[panelizer][patch][1992106] = http://drupal.org/files/1992106_panelizer_features_pipe-1.patch

projects[panels][version] = 3.x-dev
projects[panels][subdir] = contrib
projects[panels][download][type] = git
projects[panels][download][revision] = 2bb470e
projects[panels][download][branch] = 7.x-3.x
projects[panels][patch][1179034] = http://drupal.org/files/panels-1179034-41_____panels-uuids-127790-100__-80.patch

projects[panels_breadcrumbs][version] = 2.1
projects[panels_breadcrumbs][subdir] = contrib

projects[panopoly_magic][version] = 1.0-rc5
projects[panopoly_magic][subdir] = contrib

projects[pathauto][version] = 1.x-dev
projects[pathauto][subdir] = contrib
projects[pathauto][download][type] = git
projects[pathauto][download][revision] = 655e451
projects[pathauto][download][branch] = 7.x-1.x
projects[pathauto][patch][936222] = http://drupal.org/files/pathauto-persist-936222-130-pathauto-state.patch

projects[pm_existing_pages][version] = 1.4
projects[pm_existing_pages][subdir] = contrib

projects[rules][version] = 2.3
projects[rules][subdir] = contrib

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib

projects[token][version] = 1.5
projects[token][subdir] = contrib

projects[total_control][version] = 2.4
projects[total_control][subdir] = contrib

projects[transliteration][version] = 3.1
projects[transliteration][subdir] = contrib

projects[uuid][version] = 1.x-dev
projects[uuid][subdir] = contrib
projects[uuid][download][type] = git
projects[uuid][download][revision] = a383295
projects[uuid][download][branch] = 7.x-1.x
projects[uuid][patch][1969222] = http://drupal.org/files/uuid-file-entity-1969222-1.patch
projects[uuid][patch][1694972] = http://drupal.org/files/uuid-fix-uuid-save-1694972-30.patch

projects[uuid_features][version] = 1.x-dev
projects[uuid_features][subdir] = contrib
projects[uuid_features][download][type] = git
projects[uuid_features][download][revision] = d34d00f
projects[uuid_features][download][branch] = 7.x-1.x
projects[uuid_features][patch][1812876] = http://drupal.org/files/uuid_features-node_ref_term_uuid-1812876-7.patch
projects[uuid_features][patch][2017221] = http://drupal.org/files/uuid_features-incompatible_title_module-2017221-1.patch
projects[uuid_features][patch][2052387] = http://drupal.org/files/uuid_features-2052387-clone-export.patch
projects[uuid_features][patch][2056851] = http://drupal.org/files/uuid-features-use-features-get-default-1.patch
projects[uuid_features][patch][2072943] = http://drupal.org/files/uuid_features-bean-titles-2072943-1.patch

projects[views][version] = 3.7
projects[views][subdir] = contrib

projects[views_autocomplete_filters][version] = 1.0
projects[views_autocomplete_filters][subdir] = contrib

projects[views_bulk_operations][version] = 3.1
projects[views_bulk_operations][subdir] = contrib

projects[webform][version] = 3.18
projects[webform][subdir] = contrib

projects[workbench][version] = 7.x-dev
projects[workbench][subdir] = contrib
projects[workbench][type] = module
projects[workbench][download][type] = git
projects[workbench][download][revision] = 6856e4a
projects[workbench][download][branch] = 7.x-1.x

projects[workbench_moderation][version] = 1.x-dev
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][type] = module
projects[workbench_moderation][download][type] = git
projects[workbench_moderation][download][revision] = dfe9e23
projects[workbench_moderation][download][branch] = 7.x-1.x
projects[workbench_moderation][patch][1237558] = http://drupal.org/files/double-messages-1237558-7.patch
projects[workbench_moderation][patch][1285090] = http://drupal.org/files/playnicewithpanels-1285090-22.patch
projects[workbench_moderation][patch][1260112] = http://drupal.org/files/workbench_moderation-is_current-1260112-28.patch
projects[workbench_moderation][patch][1330562] = http://drupal.org/files/workbench_moderation-entity-cache-1330562-22.patch
projects[workbench_moderation][patch][1408858] = http://drupal.org/files/default-moderation-state-1408858-12.patch
projects[workbench_moderation][patch][1436260] = http://drupal.org/files/workbench_moderation-1436260-20.patch
projects[workbench_moderation][patch][1571614] = http://drupal.org/files/workbench-moderation-1571614-1.patch
projects[workbench_moderation][patch][1732802] = http://drupal.org/files/workbench-moderation-draft-terminology-1732802-1.patch
projects[workbench_moderation][patch][1785798] = http://drupal.org/files/workbench_moderation-revision-moderation-edit-link-1785798-14.patch
projects[workbench_moderation][patch][1836680] = http://drupal.org/files/workbench-moderation-solr-index-1836680-1.patch
projects[workbench_moderation][patch][1919706] = http://drupal.org/files/1919706-1-no-node.patch
projects[workbench_moderation][patch][1946392] = http://drupal.org/files/et_language-1946392-1.patch

; Libraries

libraries[querypath][download][type] = git
libraries[querypath][download][branch] = 3.x
libraries[querypath][download][revision] = eeb67cc
libraries[querypath][download][url] = https://github.com/technosophos/querypath.git
