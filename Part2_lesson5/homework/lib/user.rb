class User
  attr_accessor @surname, @name, @patronymic

  def self.input
    print 'Введите ФИО через пробел: '
    Arr.new(*gets.chomp)
  end
end
