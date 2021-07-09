ARR = %w[cat dog tiger].freeze
WEEK = %w[Понедельник Вторник Среда Четверг Пятница Суббота Воскресенье].freeze
MONTHS = %w[Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь].freeze

class Colors
  def self.arr
    print 'Введите цвета: '
    colors = *gets.split(/\s+/).map(&:to_s)
    loop do 
      print 'Введите ещё цвет: '
      check_color = *gets.split(/\s+/).map(&:to_s)
      colors = colors.push(*check_color)
      break if check_color.include?('stop')
    end
    return colors
  end
end
