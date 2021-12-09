# frozen_string_literal: true

desc 'принимает дату рождения пользователя (`rails age[ДД.ММ.ГГГГ]`) и выводит его возраст'
task :age, [:number] do |_t, args|
  arr = args[:number].split('.').map(&:to_i)
  age = Time.new.year - arr.last
  age -= 1 if Time.new.month <= arr[1] && (Time.new.day < arr.first)
  puts "Ваш возраст = #{age}"
end
