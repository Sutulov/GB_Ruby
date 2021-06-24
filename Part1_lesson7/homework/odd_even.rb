# frozen_string_literal: true

print 'Введите целое число: '
number = gets.to_i
if (number & 1).zero?
  puts "#{number} чётное число."
else
  puts "#{number} не чётное число."
end
