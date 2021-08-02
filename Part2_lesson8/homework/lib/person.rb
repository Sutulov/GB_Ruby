# frozen_string_literal: true

# Class describing site users
class Person
  attr_accessor :surname, :name, :patronymic

  def initialize
    private :new if instance_of?(Person)
  end
end

# Class of Admins
class Admin < Person
end

# Class of Users
class User < Person
end

# Class of Moderators
class Moderator < Person
end
