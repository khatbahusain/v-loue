class Bike < ApplicationRecord
  has_one_attached :imgbike
  belongs_to :user
end
