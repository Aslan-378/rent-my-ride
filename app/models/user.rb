class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile
  after_create :build_profile

  has_many :bookings
  has_many :vehicles
  has_many :vehicle_bookings, through: :vehicles, source: :bookings
  has_many :reviews, through: :bookings
  has_many :recieved_reviews, through: :vehicle_bookings, source: :review
end

