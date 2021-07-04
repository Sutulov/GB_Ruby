print 'Введите число: '
max_iter = gets.to_i
i = 0

while i < max_iter do
  i += 1
  next if i.even?
  puts i
end
