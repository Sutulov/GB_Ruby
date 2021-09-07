# frozen_string_literal: true

# Class UserException
class UserException < RuntimeError
end

# Class defining users
class User
  VALID_EMAIL_REGEX = /\A[\w+\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  attr_accessor :surname, :name, :patronymic, :email

  def initialize
    yield self
    raise UserException, 'Ошибка ввода!' if check
  end

  def check
    str = surname + name + patronymic
    str[/[a-zA-Z0-9_\-+ ]/] || email !~ VALID_EMAIL_REGEX
  end
end

first = User.new do |user|
  user.surname = 'Петров'
  user.name = 'Иван'
  user.patronymic = 'Владимирович'
  user.email = 'pochta@mail.ru'
end

p first
