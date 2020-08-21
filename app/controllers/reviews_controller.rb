class ReviewsController < ApplicationController

    def create
        @vehicle = Vehicle.find(params[:vehicle_id])
        @review = Review.new(review_params)
        @review.vehicle = @vehicle
        if @review.save
            redirect_to vehicle_path(@vehicle)
        else
            render 'vehicle/show'
        end
    end

    private

    def review_params
        params.require(:review).permit(:name, :content, :rating, :vehicle_id)
    end
end
