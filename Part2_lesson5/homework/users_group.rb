# frozen_string_literal: true

require_relative 'lib/user'
require_relative 'lib/group'

user1 = User.new(surname: 'Петров', name: 'Иван', patronymic: 'Владимирович')
user2 = User.new(surname: 'Ветров', name: 'Олег', patronymic: 'Сергеевич')
user3 = User.new(surname: 'Серов', name: 'Сергей', patronymic: 'Александрович')

group = Group.new(user1, user2, user3)
group.each { |user| print "#{user}\n" }
