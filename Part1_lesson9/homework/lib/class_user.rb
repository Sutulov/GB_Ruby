class User
  attr_accessor :fio, :surname, :name, :snd_name

  def query
    print 'Введите ФИО пользователя: '
    (gets.chomp)
  end
end
