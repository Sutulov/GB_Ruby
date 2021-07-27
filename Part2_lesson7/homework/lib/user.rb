# frozen_string_literal: true

# Class defining users
class User
  attr_accessor :surname, :name, :patronymic, :email

  def initialize(surname:, name:, patronymic:, email:)
    @surname = surname
    @name = name
    @patronymic = patronymic
    @email = email
  end
end
