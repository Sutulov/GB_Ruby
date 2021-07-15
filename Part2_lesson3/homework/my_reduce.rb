require_relative 'lib/new_methods'

old = [1, 2, 3, 4, 5]
new = old.my_reduce { |sum, i| sum = i * i }
test1 = old.reduce { |sum, i| sum = i * i }
p new
p test1
