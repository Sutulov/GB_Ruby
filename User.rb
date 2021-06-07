class User
  def fio
    'Иванов Иван'
  end
  def profession
    'Программист'
  end
end

user1 = User.new
p 'Пользователь: ' + user1.fio
p 'Работает по профессии: ' + user1.profession
 