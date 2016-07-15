class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :vehicle_id
      t.string :model
      t.integer :year
      t.string :vin
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
