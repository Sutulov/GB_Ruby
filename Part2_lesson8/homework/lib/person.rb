class Person

  def Person.new
    self == Person if private :new
  end

  attr_accessor :surname, :name, :patronymic 

  

end

class Admin < Person

end

class User < Person
end

class Moderator < Person
end
