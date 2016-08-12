# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#для получения контента через http
require 'open-uri'

#подключаем Nokogiri
require 'nokogiri'

Card.delete_all
page = Nokogiri::HTML(open("http://www.languagedaily.com/learn-german/vocabulary/common-german-words"))
page.css('table tr')[1..-1].each {|tr|
  puts "#{tr.css('td:eq(2)').text} - #{tr.css('td:eq(3)').text}" 

  Card.create!([{
  original_text: tr.css('td:eq(2)').text,
  translated_text: tr.css('td:eq(3)').text
  }])
}

=begin
Card.create!([{
  review_date: 3.days.ago,
  original_text: "Eugene",
  translated_text: "Женя"
  }])
p "We have #{Card.count} cards in data base!"
=end
