require_relative 'lib/inputs'

puts 'Введите числитель: '
numerator = gets.to_f
num = Input.new.denominator_2
puts "#{numerator} / #{num} = #{(numerator / num).round(1)}"
