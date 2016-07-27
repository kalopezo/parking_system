class Location < ActiveRecord::Base
  has_many :slots
  # Validaciones
  validates :latitude, :longitude, presence: true, numericality: true
end
