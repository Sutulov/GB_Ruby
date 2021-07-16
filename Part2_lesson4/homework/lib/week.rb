ARR = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze

class Week
  
  def each
    ARR.each do |i|
      yield i
    end
  end
end
