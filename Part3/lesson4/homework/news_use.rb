require_relative 'lib/news'

first = News.new(title: '', body: '', date: '')
p first
second = News.new(title: '', body: '', date: '')
p second

puts "first > second - #{first > second}"
puts "first < second - #{first < second}"
puts "first >= second - #{first >= second}"
puts "first >= second - #{first >= second}"
puts "first != second - #{first != second}"
