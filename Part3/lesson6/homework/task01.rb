# frozen_string_literal: true

print 'Введите число от 1 до 10: '
p num = gets.to_i
raise 'Число должно быть от 1 до 10!' if num < 1 || num > 10

arr = [*1..num]
p arr + arr.reverse.pop(num - 1)
