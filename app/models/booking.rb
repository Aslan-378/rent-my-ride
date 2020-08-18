class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews
end
