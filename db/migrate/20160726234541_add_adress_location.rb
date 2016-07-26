class AddAdressLocation < ActiveRecord::Migration
  def change
    add_column :locations, :address, :string
    add_column :locations, :max_slots, :integer
  end
end
