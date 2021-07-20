require_relative 'lib/user'

user = User.new
arr = User.input
user.surname = arr.first
user.name = arr[2]
user.patronymic = arr.last

puts "#{user.surname} #{user.name} #{user.patronymic}"
