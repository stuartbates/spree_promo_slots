class CreatePromoSlots < ActiveRecord::Migration
  def change
    create_table :promo_slots do |t|
      t.integer :product_id
      t.integer :slot_type
      t.string :title
      t.text :description
      t.string :link_url

      t.timestamps
    end
  end
end
