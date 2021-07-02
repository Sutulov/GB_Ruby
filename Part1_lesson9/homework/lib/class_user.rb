# frozen_string_literal: true

# Класс определяющий пользователя
class User
  attr_accessor :surname, :name, :snd_name

  def query
    print 'Введите ФИО пользователя через пробел: '
    gets.split(/\s+/).map(&:to_s)
  end
end
