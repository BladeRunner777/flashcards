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

page = Nokogiri::HTML(open("http://www.languagedaily.com/learn-german/vocabulary/common-german-words"))
#p page.css('body')

50.times do |index|
  index = index + 2
  css = '#jsn-mainbody > div.com-content > div > div.jsn-article-content > table > tbody > tr:nth-child(' + index.to_s + ') > td.bigLetter'
  css2 = '#jsn-mainbody > div.com-content > div > div.jsn-article-content > table > tbody > tr:nth-child(' + index.to_s + ') > td:nth-child(3)'

  p index
  p page.css(css).text
  p page.css(css2).text

  Card.create!([{
  original_text: page.css(css).text,
  translated_text: page.css(css2).text
  }])
end

=begin
Card.create!([{
  review_date: 3.days.ago,
  original_text: "Eugene",
  translated_text: "Женя"
  }])
p "We have #{Card.count} cards in data base!"
=end
