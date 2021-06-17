# frozen_string_literal: true

# Класс пользователь
class User
  @@counter = 0

  def initialize
    @@counter += 1
  end

  def counter
    @@counter
  end
end

first = User.new
_second = User.new
_third = User.new
puts "Новый объект был создан #{first.counter} раз."
