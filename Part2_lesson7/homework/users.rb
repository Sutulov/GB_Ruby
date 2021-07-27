# frozen_string_literal: true

require_relative 'lib/user'

first = User.new do |user|
  user.surname = 'Петров'
  user.name = 'Иван'
  user.patronymic = 'Владимирович'
  user.email = 'pochta@ya.ru'
end

puts "#{first.surname} #{first.name} #{first.patronymic} #{first.email}"
