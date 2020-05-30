class CreateSpiceRacks < ActiveRecord::Migration[6.0]
  def change
    create_table :spice_racks do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
