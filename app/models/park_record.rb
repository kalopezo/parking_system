class ParkRecord < ActiveRecord::Base
  belongs_to :vehicle_id
  belongs_to :slot_id
end
