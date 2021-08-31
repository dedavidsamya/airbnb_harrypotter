class Location < ApplicationRecord
  has_many :flats, dependent: :destroy
end
