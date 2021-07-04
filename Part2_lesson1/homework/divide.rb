require_relative 'lib/inputs'

puts 'Введите числитель: '
numerator = gets.to_f
begin
  num = Input.new.denominator
end while num <= 0 

puts "#{numerator} / #{num} = #{(numerator / num).round(1)}"
