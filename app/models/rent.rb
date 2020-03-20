class Rent < ApplicationRecord
  has_many :bikes
  belongs_to :user
end
