class CreateSpreeSlotTypes < ActiveRecord::Migration
  def change
    create_table :spree_slot_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
