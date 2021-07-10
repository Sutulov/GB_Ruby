# frozen_string_literal: true

ARR = %w[cat dog tiger].freeze
WEEK = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze
MONTHS = %w[Январь
            Февраль
            Март
            Апрель
            Май
            Июнь
            Июль
            Август
            Сентябрь
            Октябрь
            Ноябрь
            Декабрь].freeze

PLANETS = { merciry: 330.2,
            venus: 4_868.5,
            earth: 5_974.2,
            mars: 641.85,
            jupiter: 1_899_000,
            saturn: 568_460,
            uranus: 86_832,
            neptune: 102_430 }.freeze

# Class for user input of color name
class Colors
  def self.arr
    print 'Введите цвета: '
    colors = *gets.split(/\s+/).map(&:to_s)
    loop do
      print 'Введите ещё цвет: '
      check_color = *gets.split(/\s+/).map(&:to_s)
      colors.push(*check_color)
      break if check_color.include?('stop')
    end
    colors.reject { |str| str == 'stop' }
  end
end

# Class for defining users
class User
  attr_accessor :surname, :name, :snd_name, :mark

  def query
    print 'Введите ФИО пользователя и его оценку через пробел: '
    gets.split(/\s+/).map(&:to_s)
  end

  def self.average_user(arr_user)
    average = arr_user.reduce(0) { |m, x| m + x.mark.to_i } / 10.0
    arr_user.select { |user| user.mark.to_i > average.round }
            .each do |user| 
               yield [user.surname, user.name, user.snd_name, user.mark] 
    end
  end
end
