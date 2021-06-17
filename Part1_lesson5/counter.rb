class User
  @@counter = 0

  def initialize
    @@counter = @@counter + 1
  end

  def counter
  @@counter
  end
end

first = User.new
second = User.new
third = User.new
puts "Новый объект был создан #{first.counter} раз."
