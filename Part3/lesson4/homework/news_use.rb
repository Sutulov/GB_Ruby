# frozen_string_literal: true

require_relative 'lib/news'

first = News.new(title: 'Мир!', body: 'Заключили мир!', date: Time.new(2021, 8, 19, 8, 0o0))
p first
second = News.new(title: 'Война!', body: 'Закончилась война!', date: Time.new(2021, 8, 18, 10, 0o0))
p second

puts "first > second - #{first > second}"
puts "first < second - #{first < second}"
puts "first >= second - #{first >= second}"
puts "first >= second - #{first >= second}"
puts "first != second - #{first != second}"
