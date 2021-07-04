# frozen_string_literal: true

print 'Введите количество повторов: '
max_iter = gets.to_i
i = 0

while i < max_iter
  puts 'Hello, world!'
  i += 1
  break if i >= 5
end
