class CardValidator < ActiveModel::Validator
  def validate(record)
    if record.original_text == record.translated_text
      record.errors[:base] << "Not equal records!!"
    end    
  end
end


class Card < ApplicationRecord
  validates :original_text, :translated_text, presence: true
  #validates :original_text, uniqueness: true
  validates_with CardValidator
  before_validation :change_review_date

  private
  def change_review_date
  	review_date = 3.days.from_now(time = ::Time.current)
  end
end
