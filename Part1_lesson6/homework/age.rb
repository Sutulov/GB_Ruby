# frozen_string_literal: true

puts 'Введите год, месяц и день вашего рождения ****.**.**:'
date = gets.chomp
arr = date.split('.').map(&:to_i)
age = Time.new.year - arr[0]
age -= 1 if Time.new.month <= arr[1] && (Time.new.day < arr[2])
puts "Ваш возраст = #{age}"
