class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @vehicle = Vehicle.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to user_bookings_path
    else
      render 'bookings/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_bookings_path
  end

  private

  def booking_params
    parmas.require(:booking).permit(:price, :start_date, :end_date, :confirmed)
  end
end
