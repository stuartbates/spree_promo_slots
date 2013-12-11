Deface::Override.new(:virtual_path => "spree/layouts/admin",
                      :name => "promo_slots_admin_tab",
                      :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                      :text => "<%= tab(:promo_slots, :icon => 'icon-th-large') %>")

# Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
#                       :name => "add_banner_box_settings",
#                       :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
#                       :text => "<%= configurations_sidebar_menu_item(Spree.t(:banner_box_settings), edit_admin_banner_box_settings_url) %>")