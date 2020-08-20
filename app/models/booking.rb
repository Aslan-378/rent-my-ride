class Booking < ApplicationRecord
  belongs_to :vehicle
  belongs_to :user
  has_many :reviews
  def self.earliest_date
    start_at_values = Booking.pluck(:start_date)
    earliest_date = start_at_values.min
  end

  def self.sorted_bookings
    bookings = Booking.all
    sorted_objects = bookings.sort_by{|b| b.start_date}
  end
end
