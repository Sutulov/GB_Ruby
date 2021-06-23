puts 'Введите год, месяц и день вашего рождения ****.**.**:'
date = gets.chomp
arr = date.split('.').map(&:to_i)
age = Time.new.year - arr[0]
if Time.new.month <= arr[1]
  if Time.new.day < arr[2]
    age -= 1
  end
end
puts "Ваш возраст = #{age}"
