class Person
  attr_accessor :surname, :name, :patronymic 

  class << Person
    private :new
  end


end

class Admin < Person
end

class User < Person
end

class Moderator < Person
end
