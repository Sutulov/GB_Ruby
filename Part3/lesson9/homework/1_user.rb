# frozen_string_literal: true

class UserException < Exception
end

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email

  raise UserException.new ('Ошибка') if p @email
  p self::email
end

first = User.new

first.email = 'Alex'

p first
