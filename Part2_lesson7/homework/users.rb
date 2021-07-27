# frozen_string_literal: true

require_relative 'lib/user'

user = User.new(surname: 'Петров', name: 'Иван', patronymic: 'Владимирович', email: 'pochta@ya.ru')

puts "#{user.surname} #{user.name} #{user.patronymic} #{user.email}"
