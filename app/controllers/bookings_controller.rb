class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
    @vehicle = Vehicle.new
    @review = Review.new
  end

  def new
    @booking = Booking.new
  end

  def create
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking = Booking.new(booking_params)
    @booking.vehicle = @vehicle
    @booking.user = current_user
    if @booking.save
      redirect_to user_booking_path(current_user, @booking)
    else
      render 'vehicles/show'
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to user_path(current_user)
  end

  private

  def booking_params
    params.require(:booking).permit(:price, :start_date, :end_date, :confirmed, :vehicle)
  end
end
