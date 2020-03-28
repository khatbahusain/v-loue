class Rent < ApplicationRecord

#  has_many :bikes
#  belongs_to :user
  validates :date_disponible, presence: true
  validates :date_end, presence: true

  validate :start_date_cannot_be_in_the_past
  validates :prix, presence: true
  validate :prix_non_zero

	def start_date_cannot_be_in_the_past
		if (date_disponible < Date.today || date_disponible > date_end)
          errors.add(:error, "can't be in the past")
    end

  end
  

  def prix_non_zero
    if self.prix <= 0
      self.errors.add(:prix, "prix ne peut pas etre zéro")
    end
  end




end