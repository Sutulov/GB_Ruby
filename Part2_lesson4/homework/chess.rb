require_relative 'lib/chessmen'

figure = Chessmen.new

puts figure.name
puts "Цвет - #{figure.color}"
puts "Ходит #{figure.walk}"
