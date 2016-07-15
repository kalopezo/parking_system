class Vehicle < ActiveRecord::Base
  belongs_to :user_id
  has_many :park_records
  has_many :slots, through: :park_records
end
