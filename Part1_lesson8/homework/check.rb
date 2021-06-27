print 'Введите аргумент: '
input = gets.chomp
puts (if input.to_i == 0 && input != '0' && input.to_f.to_s != input
        'Строка'
      elsif input.include? (".")
        'Вещественное число'
      else
        'Целое число'
      end)
