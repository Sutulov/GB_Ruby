# frozen_string_literal: true

%w[moderator admin author regular_visitor].each do |file|
  require_relative "lib/#{file}"
end

user1 = Moderator.new do |user|
  user.surname = 'Петров'
  user.name = 'Иван'
  user.patronymic = 'Владимирович'
  user.email = 'pochta@ya.ru'
end

user2 = Admin.new

puts user1.to_s
puts user1.say
puts user2.say
p user1
p user2
