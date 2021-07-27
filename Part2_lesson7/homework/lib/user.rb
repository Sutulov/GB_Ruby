# frozen_string_literal: true

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize
    yield self
  end
end
