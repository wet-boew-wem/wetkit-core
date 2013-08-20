; WetKit Core Makefile

api = 2
core = 7.x

; Modules for WetKit Core

projects[advanced_help][version] = 1.x-dev
projects[advanced_help][subdir] = contrib
projects[advanced_help][type] = module
projects[advanced_help][download][type] = git
projects[advanced_help][download][revision] = 26437d8
projects[advanced_help][download][branch] = 7.x-1.x

projects[better_formats][version] = 1.x-dev
projects[better_formats][subdir] = contrib
projects[better_formats][type] = module
projects[better_formats][download][type] = git
projects[better_formats][download][revision] = 3b4a8c9
projects[better_formats][download][branch] = 7.x-1.x

projects[diff][version] = 3.x-dev
projects[diff][subdir] = contrib
projects[diff][type] = module
projects[diff][download][type] = git
projects[diff][download][revision] = adb4304
projects[diff][download][branch] = 7.x-3.x

projects[entity_view_mode][version] = 1.x-dev
projects[entity_view_mode][subdir] = contrib
projects[entity_view_mode][type] = module
projects[entity_view_mode][download][type] = git
projects[entity_view_mode][download][revision] = a518484
projects[entity_view_mode][download][branch] = 7.x-1.x

projects[fences][version] = 1.x-dev
projects[fences][subdir] = contrib
projects[fences][type] = module
projects[fences][download][type] = git
projects[fences][download][revision] = 67206b5
projects[fences][download][branch] = 7.x-1.x

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

projects[admin_menu][version] = 3.0-rc4
projects[admin_menu][subdir] = contrib

projects[password_policy][version] = 1.3
projects[password_policy][subdir] = contrib

projects[total_control][version] = 2.4
projects[total_control][subdir] = contrib

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

projects[rules][version] = 2.3
projects[rules][subdir] = contrib

projects[transliteration][version] = 3.1
projects[transliteration][subdir] = contrib

; Libraries

libraries[querypath][download][type] = git
libraries[querypath][download][branch] = 3.x
libraries[querypath][download][revision] = eeb67cc
libraries[querypath][download][url] = https://github.com/technosophos/querypath.git
