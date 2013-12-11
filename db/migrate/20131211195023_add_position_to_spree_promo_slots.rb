class AddPositionToSpreePromoSlots < ActiveRecord::Migration
  def change
    add_column :spree_promo_slots, :position, :integer
  end
end
