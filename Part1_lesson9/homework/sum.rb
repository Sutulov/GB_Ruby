def sum(*params)
  params.sum
end

print 'Введите числовые аргументы: '
number = gets.chomp
puts sum(1, 5, 6)
