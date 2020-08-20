class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.new
  end

  def create 
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to user_path(current_user)
    else
      render 'users/show'
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to user_path(current_user)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:category, :model, :description, :price, :address, :user_id)
  end
end
