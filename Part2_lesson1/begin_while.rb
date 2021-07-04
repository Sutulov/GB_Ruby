# frozen_string_literal: true

print 'Введите количество повторов: '
inter = gets.to_i
i = 0

loop do
  puts 'Hello, world!'
  i += 1
  break unless i < inter
end
