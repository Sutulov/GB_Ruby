class User
  def name
    'Иванов Иван Иваныч'
  end

  def age
    21
  end
end

u = User.new
puts "ФИО: #{u.name}"
puts "Возраст: #{u.age}"
