require_relative 'lib/news'

first = News.new(title: 'Мир!', body: 'Заключили мир!', date: Time.new(2021, 8, 19, 8, 00))
p first
second = News.new(title: 'Война!', body: 'Закончилась война!', date: Time.new(2021, 8, 18, 10, 00))
p second

puts "first > second - #{first > second}"
puts "first < second - #{first < second}"
puts "first >= second - #{first >= second}"
puts "first >= second - #{first >= second}"
puts "first != second - #{first != second}"
