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
end
