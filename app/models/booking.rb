class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews
  validates :start_date, :end_date, :price, presence: true
  def self.earliest_date
    start_at_values = Booking.pluck(:start_date)
    earliest_date = start_at_values.min
  end

  def self.sorted_bookings
    bookings = Booking.all
    sorted_objects = bookings.sort_by{|b| b.start_date}
  end

  def self.sort_bookings
    sorted_user_bookings = @user.bookings.sort_by{|b| b.start_date}
  end
end
