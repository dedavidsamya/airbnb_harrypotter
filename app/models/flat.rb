class Flat < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos
  validates :title, :description, :location, :price, presence: true
end
