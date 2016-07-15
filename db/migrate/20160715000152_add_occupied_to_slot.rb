class AddOccupiedToSlot < ActiveRecord::Migration
  def change
    add_column :slots, :occuped, :boolean
  end
end
