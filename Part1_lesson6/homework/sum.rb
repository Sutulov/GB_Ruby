# frozen_string_literal: true

sum = 0
puts 'Введите числа:'
numbers = gets.chomp
arr = numbers.split(' ').map(&:to_i)
arr.each do |i|
  sum += i
end
puts "Сумма введённых чисел = #{sum}"
