# frozen_string_literal: true

# Класс приветствия
class Hello
  def hello
    if Time.new.hour >= 18
      puts 'Добрый вечер'
    elsif Time.new.hour >= 12
      puts 'Добрый день'
    elsif Time.new.hour >= 6
      puts 'Доброе утро'
    else
      puts 'Доброй ночи'
    end
  end
end
