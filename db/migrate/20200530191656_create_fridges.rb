class CreateFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :fridges do |t|
      t.integer :capacity
      t.integer :user_id

      t.timestamps
    end
  end
end
