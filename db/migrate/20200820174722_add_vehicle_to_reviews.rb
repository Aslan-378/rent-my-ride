class AddVehicleToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :vehicle, null: false, foreign_key: true
  end
end
