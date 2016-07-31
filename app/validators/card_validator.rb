class CardValidator < ActiveModel::Validator
  def validate(record)
    if record.original_text == record.translated_text
      record.errors[:base] << "Not equal records!!"
    end    
  end
end

