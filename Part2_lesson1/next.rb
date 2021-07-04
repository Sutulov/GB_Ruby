# frozen_string_literal: true

print 'Введите число: '
max_iter = gets.to_i
i = 0

while i < max_iter
  i += 1
  next if i.even?

  puts i
end
