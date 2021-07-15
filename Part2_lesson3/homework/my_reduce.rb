require_relative 'lib/new_methods'

old = [1, 2, 3, 4, 5]
new = old.reduce do |m, i| 
  puts i
  puts m
end
# puts old
# puts new
