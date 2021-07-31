class Person
  remove_method :new

  attr_accessor :surname, :name, :patronymic
end

class Admin < Person
end

class User < Person
end

class Moderator < Person
end
