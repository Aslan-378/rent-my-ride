class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.geocoded
    @markers = @vehicles.map do |vehicle|
      {
        lat: vehicle.latitude,
        lng: vehicle.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { vehicle: vehicle }),
        image_url: helpers.asset_url('bike')
      }
    end
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render :new
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to user_path(current_user)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:category, :model, :price, :description, :address)
  end

end
