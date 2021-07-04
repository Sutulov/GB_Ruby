# frozen_string_literal: true

print 'Введите число: '
max_iter = gets.to_i
i = 0

while i < max_iter
  puts i
  redo if rand(0..1).zero?
  i += 1
end
