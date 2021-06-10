# frozen_string_literal: true

##
# Класс информации о пользователе
class User
  ##
  # Хранит Фамилию имя и отчество пользователя
  #
  # = Пимер использования
  #
  #  user1 = User.new
  #  print 'Пользователь: ' + user1.fio
  def fio
    'Иванов Иван Иваныч'
  end
  # Хранит профессию пользователя
  #
  # = Пимер использования
  #
  #  user1 = User.new
  #  print 'Работает по профессии: ' + user1.profession
  def profession
    'Программист'
  end
end

user1 = User.new
print 'Пользователь: ' + user1.fio
print 'Работает по профессии: ' + user1.profession
 