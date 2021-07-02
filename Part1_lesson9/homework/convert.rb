def convert(*value)
  value.map{|i| i * 1_000 }
end

print 'Введите последовательность чисел (5 11 9...) '
print convert(*gets.split(/\s+/).map(&:to_i))
