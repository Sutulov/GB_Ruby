class Person
  attr_accessor :name
  attr_reader :password

  def initialize(name:, password:)
    @name = name
    @password = password
  end

  def marshal_dump
    [name]
  end

  def marshal_load(name)
    @name = name
  end
end

person = Person.new(name: 'Иван', password: 'qwerty')

str = Marshal.dump(person)
prsn = Marshal.load(str)

p prsn.name
p prsn.password
