# frozen_string_literal: true

ARR = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze

# Class work with days of week
class Week
  def each(&block)
    ARR.each(&block)
  end
end
