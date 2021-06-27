print 'Введите аргумент: '
input = gets.chomp
arr = arr.map(&:to_s)
puts (if (input.to_i == 0 || input.to_f == 0.0) && input != '0' && input != '0.0'
        'Строка'
      elsif input.include? (".")
        'Вещественное число'
      else
        'Целое число'
      end)
