# frozen_string_literal: true

# Класс дней недали
class Week
  def find(num)
    arr = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze
    arr[num - 1] if (1..7).include?(num)
  end
end
