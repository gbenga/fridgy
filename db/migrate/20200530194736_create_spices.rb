class CreateSpices < ActiveRecord::Migration[6.0]
  def change
    create_table :spices do |t|
      t.string :name
      t.integer :price
      t.integer :amount_left
      t.integer :spice_rack_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
