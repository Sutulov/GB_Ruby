# frozen_string_literal: true

class UserException < Exception
end

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize
    yield self

    str = surname + name + patronymic

    raise UserException.new('Ошибка ввода!') if str[/[a-zA-Z0-9_\-+ ]/]
     # || !email.match(/^[а-яА-Я]+@^[а-яА-Я]+\.^[а-яА-Я]+/)
p email.match(/[a-zA-Z0-9_]+@[a-zA-Z0-9_]+\.[^а-яА-Я]+/)
  end
end

first = User.new do |user|
  user.surname = 'Петров'
  user.name = 'Иван'
  user.patronymic = 'Владимирович'
  user.email = 'pochta@yaа.ru'
end

p first
