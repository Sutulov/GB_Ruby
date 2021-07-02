# frozen_string_literal: true

def fibonacci(num)
  ((((1 + 5**0.5) / 2)**num) - (((1 - 5**0.5) / 2)**num)) / 5**0.5
end

print 'Введите число: '
puts fibonacci(gets.to_i).to_i
