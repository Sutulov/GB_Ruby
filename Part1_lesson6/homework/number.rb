# frozen_string_literal: true

puts 'Введите число '
number = gets.chomp.to_i
if number.even?
  puts "#{number} чётное число."
else
  puts "#{number} не чётное число."
end
