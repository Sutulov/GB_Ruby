# frozen_string_literal: true

# Class for add greeting
class Time
  def self.hello
    if Time.new.hour >= 18
      'Добрый вечер'
    elsif Time.new.hour >= 12
      'Добрый день'
    elsif Time.new.hour >= 6
      'Доброе утро'
    else
      'Доброй ночи'
    end
  end
end
