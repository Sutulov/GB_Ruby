# frozen_string_literal: true

class UserException < Exception
end

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize
    yield self

    raise UserException.new('Ошибка!!!!!!') if email == 'pochta@ya.ru'
  end
end

first = User.new do |user|
  user.surname = 'Петров'
  user.name = 'Иван'
  user.patronymic = 'Владимирович'
  user.email = 'pochta@ya.ru'
end

p first
