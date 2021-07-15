require_relative 'lib/new_methods'

old = [1, 2, 3, 4, 5]
new = old.my_select { |i| i == 1 }
puts old
puts new
