class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :type
      t.string :model
      t.text :description
      t.integer :price
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
