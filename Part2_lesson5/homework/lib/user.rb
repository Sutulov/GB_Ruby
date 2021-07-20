# Class user
class User
  attr_accessor :surname, :name, :patronymic

  def initialize(surname:, name:, patronymic:)
    @surname = surname
    @name = name
    @patronymic = patronymic
  end
end
