class Room < ApplicationRecord
  validates :room_number, presence: true, uniqueness: true
  has_many :bookings
end
