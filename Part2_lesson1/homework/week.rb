require 'date'


puts today = Time.now
puts today.strftime "%w"
puts today.strftime "%u"
puts today.strftime "%a"
puts today.strftime "%W"
puts today.strftime "%G"
puts today.strftime "%d.%m.%Y"
puts today.sunday?
puts today.wday
puts today.wday.next
puts today.yday
puts (today + 2592000).strftime "%a"
# week = Array.new(7).map { |i| i =   }
