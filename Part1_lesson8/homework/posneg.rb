print 'Введите число: '
number = gets.chomp
puts (if  input.to_i.to_s != input && input.to_f.to_s != input
        'Это не число!'
      elsif number[0] != '-'
        'Положительное число'
      else
        'Отрицательное число'
      end)
