class AddColumnsParkingRecord < ActiveRecord::Migration
  def change
    add_column :park_records, :entry_date, :date
    add_column :park_records, :departure_date, :date
  end
end
