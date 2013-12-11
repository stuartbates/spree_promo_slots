class CreatePromoSlots < ActiveRecord::Migration
  def change
    create_table :spree_promo_slots do |t|
      t.integer :product_id
      t.integer :slot_type_id
      t.string :title
      t.text :description
      t.string :link_url

      t.timestamps
    end
  end
end