class ChangeSpreePromoSlots < ActiveRecord::Migration
  def change
    rename_column :spree_promo_slots, :product_id, :variant_id
  end
end
