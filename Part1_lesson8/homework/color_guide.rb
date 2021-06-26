require_relative './lib/colors'

print 'Введите номер цвета: '
number = gets.chomp
color = Colors.new
puts color.find_right(number)
