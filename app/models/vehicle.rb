class Vehicle < ActiveRecord::Base
  # Definicion de las realaciones
  belongs_to :user
  has_many :park_records
  has_many :slots, through: :park_records
  # Validaciones
  validates
end
