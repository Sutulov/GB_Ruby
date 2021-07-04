print 'Введите максимальное значение: '
max_iter = gets.to_i
i = 1

size = (max_iter * max_iter).to_s.size + 1

while i <= max_iter
  j = 1
  while j <= max_iter
    print format("% #{size}d ", i * j)
    j += 1
  end
  i += 1
  puts
end
