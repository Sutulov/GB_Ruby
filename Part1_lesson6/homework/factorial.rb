fact = 1
puts 'Введите целое число'
number = gets.chomp
arr =[*1..number.to_i]
arr.each do |i|
  fact *= i
end
puts "Факториал этого числа = #{fact}"
