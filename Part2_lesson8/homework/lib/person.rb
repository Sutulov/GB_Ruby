class Person
  attr_accessor :surname, :name, :patronymic 
  def initialize
    private :new if self.class == Person
  end
end

class Admin < Person
end

class User < Person
end

class Moderator < Person
end
