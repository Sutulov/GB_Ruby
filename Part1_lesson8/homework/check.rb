print 'Введите аргумент: '
input = gets.chomp
arr = [*0..9]
arr = arr.map(&:to_s)
puts (if (input.include? arr)
        'Строка'
      # elsif input.include? (".")
      #   'Вещественное число'
      else
        'Целое число'
      end)
