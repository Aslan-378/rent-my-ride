class Review < ApplicationRecord
    belongs_to :vehicle
    validates :rating, inclusion: 1..5
    validates :rating, presence: true
end
