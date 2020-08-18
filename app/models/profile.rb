class Profile < ApplicationRecord
  has_one :profile
  after_create :build_profileend
  end

   def build_profile
    Profile.create(user: self)
