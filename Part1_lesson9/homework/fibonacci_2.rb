def fibonacci(n)
  ((((1 + 5**0.5) / 2) ** n) - (((1 - 5**0.5) / 2) ** n)) / 5**0.5
end

print 'Введите число: '
puts fibonacci(gets.to_i).to_i
