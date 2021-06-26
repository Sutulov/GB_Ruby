class Week
  def find_right(num)
    arr = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze
    if (1..7) === num 
      arr[num - 1]
    end
  end
end
