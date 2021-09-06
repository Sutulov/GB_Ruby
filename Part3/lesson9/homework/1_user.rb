# frozen_string_literal: true

class UserException < Exception
end

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email
  def name
    raise UserException.new ('Ошибка') if @name == 'Alex'
  end
end

first = User.new

first.name = 'Alex'

p first
