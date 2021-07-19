# frozen_string_literal: true

# Class work with days of week
class Week
  ARR = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze
  def each(&block)
    ARR.each(&block)
  end
end
