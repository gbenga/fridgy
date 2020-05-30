class CreateIngredients < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price
      t.integer :quantity
      t.integer :fridge_id
      t.integer :meal_id

      t.timestamps
    end
  end
end
