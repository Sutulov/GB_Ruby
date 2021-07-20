# frozen_string_literal: true

require_relative 'lib/user'

user = User.new(surname: 'Петров', name: 'Иван', patronymic: 'Владимирович')

puts "#{user.surname} #{user.name} #{user.patronymic}"
