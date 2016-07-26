class Location < ActiveRecord::Base
  has_many :slots
  geocoded_by :address
  after_validation :geocode, if: ->(obj) { obj.address.present? && obj.address.changed? }
  reverse_geocoded_by :latitude, :longitude
end
