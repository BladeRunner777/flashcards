class Card < ApplicationRecord
  validates :original_text, :translated_text, presence: true
  #validates :original_text, uniqueness: true
  validates_with CardValidator
  before_validation :change_review_date

  #private
  def change_review_date
  	self.review_date = 3.days.from_now
  end
end
