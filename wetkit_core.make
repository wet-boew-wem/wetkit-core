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

projects[elements][version] = 1.4
projects[elements][subdir] = contrib

projects[entity][version] = 1.2
projects[entity][subdir] = contrib
projects[entity][patch][2104461] = http://drupal.org/files/hook_features_export_options-2104461-21.patch
projects[entity][patch][1780646] = http://drupal.org/files/issues/entity-node_access-1780646-273.diagnostic.patch

projects[entityreference][version] = 1.1
projects[entityreference][subdir] = contrib

projects[entityreference_prepopulate][version] = 1.3
projects[entityreference_prepopulate][subdir] = contrib

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

projects[features][version] = 2.x-dev
projects[features][subdir] = contrib
projects[features][download][type] = git
projects[features][download][revision] = a338503
projects[features][download][branch] = 7.x-2.x
;projects[features][patch][766264] = http://drupal.org/files/766264-25-alter-override.patch

projects[fences][version] = 1.x-dev
projects[fences][subdir] = contrib
projects[fences][type] = module
projects[fences][download][type] = git
projects[fences][download][revision] = 67206b5
projects[fences][download][branch] = 7.x-1.x

projects[field_collection][version] = 1.x-dev
projects[field_collection][subdir] = contrib
projects[field_collection][download][type] = git
projects[field_collection][download][revision] = 0fd332e
projects[field_collection][download][branch] = 7.x-1.x
projects[field_collection][patch][707484] = http://drupal.org/files/field_collection-remove_button-707484-2.patch
projects[field_collection][patch][1344672] = http://drupal.org/files/issues/field_collection-et-1344672-89.patch
projects[field_collection][patch][2075325] = http://drupal.org/files/issues/field_collection-field_collection_uuid-2075325-3.patch
;projects[field_collection][patch][1807460] = http://drupal.org/files/field_collection_with_workbench_moderation-1807460-46.patch

projects[field_group][version] = 1.3
projects[field_group][subdir] = contrib

projects[hierarchical_select][version] = 3.x-dev
projects[hierarchical_select][subdir] = contrib
projects[hierarchical_select][type] = module
projects[hierarchical_select][download][type] = git
projects[hierarchical_select][download][revision] = b3e34d9
projects[hierarchical_select][download][branch] = 7.x-3.x

projects[libraries][version] = 2.1
projects[libraries][subdir] = contrib

projects[link][version] = 1.x-dev
projects[link][type] = module
projects[link][subdir] = contrib
projects[link][download][type] = git
projects[link][download][revision] = 6ae1ff0
projects[link][download][branch] = 7.x-1.x

projects[linkchecker][version] = 1.x-dev
projects[linkchecker][type] = module
projects[linkchecker][subdir] = contrib
projects[linkchecker][download][type] = git
projects[linkchecker][download][revision] = 0e7fc34
projects[linkchecker][download][branch] = 7.x-1.x

projects[menu_attributes][version] = 1.x-dev
projects[menu_attributes][subdir] = contrib
projects[menu_attributes][download][type] = git
projects[menu_attributes][download][revision] = ed7e9aa
projects[menu_attributes][download][branch] = 7.x-1.x

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
projects[panelizer][patch][1992106] = http://drupal.org/files/1992106_panelizer_features_pipe-1.patch

projects[panels][version] = 3.x-dev
projects[panels][subdir] = contrib
projects[panels][download][type] = git
projects[panels][download][revision] = 2bb470e
projects[panels][download][branch] = 7.x-3.x
projects[panels][patch][1179034] = http://drupal.org/files/panels-1179034-41_____panels-uuids-127790-100__-80.patch

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

projects[rules][version] = 2.6
projects[rules][subdir] = contrib
projects[rules][patch][1810656] = http://drupal.org/files/rules-1810656-25.patch

projects[strongarm][version] = 2.0
projects[strongarm][subdir] = contrib

projects[token][version] = 1.5
projects[token][subdir] = contrib

projects[total_control][version] = 2.4
projects[total_control][subdir] = contrib
projects[total_control][patch][2134401] = http://drupal.org/files/issues/filtered_html_dashboard-2134401-01.patch

projects[transliteration][version] = 3.1
projects[transliteration][subdir] = contrib

projects[uuid][version] = 1.x-dev
projects[uuid][subdir] = contrib
projects[uuid][download][type] = git
projects[uuid][download][revision] = 3f4d9fb
projects[uuid][download][branch] = 7.x-1.x
projects[uuid][patch][1969222] = http://drupal.org/files/uuid-file-entity-1969222-1.patch
projects[uuid][patch][2074599] = http://drupal.org/files/uuid_remove_contrib_support-2074599-2.patch
projects[uuid][patch][2145567] = http://drupal.org/files/issues/uuid_ctools_context-2145567-01.patch

projects[uuid_features][version] = 1.x-dev
projects[uuid_features][subdir] = contrib
projects[uuid_features][download][type] = git
projects[uuid_features][download][revision] = ebf5fd1
projects[uuid_features][download][branch] = 7.x-1.x
projects[uuid_features][patch][1812876] = http://drupal.org/files/uuid_features-node_ref_term_uuid-1812876-7.patch
projects[uuid_features][patch][2017221] = http://drupal.org/files/uuid_features-incompatible_title_module-2017221-1.patch
projects[uuid_features][patch][2052387] = http://drupal.org/files/uuid_features-2052387-clone-export.patch

projects[uuid_link][version] = 1.x-dev
projects[uuid_link][subdir] = contrib
projects[uuid_link][type] = module
projects[uuid_link][download][type] = git
projects[uuid_link][download][revision] = dd716df
projects[uuid_link][download][branch] = 7.x-1.x
projects[uuid_link][patch][2101455] = http://drupal.org/files/uuid_link_entity_translation-2101455-9.patch

projects[views][version] = 3.x-dev
projects[views][subdir] = contrib
projects[views][type] = module
projects[views][download][type] = git
projects[views][download][revision] = d1f2fd7
projects[views][download][branch] = 7.x-3.x
projects[views][patch][1331056] = http://drupal.org/files/views-3.x-dev-issue_1331056-36.patch

projects[views_autocomplete_filters][version] = 1.0
projects[views_autocomplete_filters][subdir] = contrib

projects[views_bulk_operations][version] = 3.1
projects[views_bulk_operations][subdir] = contrib

projects[webform][version] = 4.0-beta1
projects[webform][subdir] = contrib
projects[webform][patch][2134401] = http://drupal.org/files/webform_uuid_0.patch

projects[workbench][version] = 1.x-dev
projects[workbench][subdir] = contrib
projects[workbench][type] = module
projects[workbench][download][type] = git
projects[workbench][download][revision] = 6856e4a
projects[workbench][download][branch] = 7.x-1.x
projects[workbench][patch][2075467] = http://drupal.org/files/issues/workbench_uuid-2075467-01.patch

projects[workbench_moderation][version] = 1.x-dev
projects[workbench_moderation][subdir] = contrib
projects[workbench_moderation][type] = module
projects[workbench_moderation][download][type] = git
projects[workbench_moderation][download][revision] = a90378d
projects[workbench_moderation][download][branch] = 7.x-1.x
; Trivial
projects[workbench_moderation][patch][1237558] = http://drupal.org/files/double-messages-1237558-7.patch
projects[workbench_moderation][patch][1732802] = http://drupal.org/files/workbench-moderation-draft-terminology-1732802-1.patch
projects[workbench_moderation][patch][1785798] = http://drupal.org/files/workbench_moderation-revision-moderation-edit-link-1785798-14.patch
projects[workbench_moderation][patch][1836680] = http://drupal.org/files/workbench-moderation-solr-index-1836680-1.patch
projects[workbench_moderation][patch][1445824] = http://drupal.org/files/workbench_moderation-better_migration_support-1445824-11.patch
projects[workbench_moderation][patch][1919706] = http://drupal.org/files/issues/workbench_moderation-entitymalformed-1919706-3.patch
; Extensively Tested
projects[workbench_moderation][patch][1260112] = http://drupal.org/files/workbench_moderation_is_current-1260112-58.patch
projects[workbench_moderation][patch][1330562] = http://drupal.org/files/workbench_moderation-entity-cache-1330562-22.patch
projects[workbench_moderation][patch][1571614] = http://drupal.org/files/workbench-moderation-1571614-1.patch
projects[workbench_moderation][patch][1946392] = http://drupal.org/files/et_language-1946392-1.patch
; Stable
projects[workbench_moderation][patch][1402860] = http://drupal.org/files/workbench_moderation-panelizer_revisions-1402860-36.patch
projects[workbench_moderation][patch][1408858] = http://drupal.org/files/default-moderation-state-1408858-12.patch
projects[workbench_moderation][patch][1436260] = http://drupal.org/files/issues/1436260-workbench_moderation-states-vbo-38.patch
projects[workbench_moderation][patch][2098151] = http://drupal.org/files/playnicewithpanels-2098151-01.patch
projects[workbench_moderation][patch][2070389] = http://drupal.org/files/workbench_moderation-correctly_update_status-2070389-2.patch
; Queued
;projects[workbench_moderation][patch][1408838] = http://drupal.org/files/workbench_moderation-revision-operations-performance-1408838-38.patch

; Libraries

libraries[querypath][download][type] = git
libraries[querypath][download][branch] = 3.x
libraries[querypath][download][revision] = eeb67cc
libraries[querypath][download][url] = https://github.com/technosophos/querypath.git
