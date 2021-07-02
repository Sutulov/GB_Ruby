# frozen_string_literal: true

def fibonacci(num)
  num <= 1 ? num : fibonacci(num - 1) + fibonacci(num - 2)
end

print 'Введите число: '
puts fibonacci(gets.to_i)
