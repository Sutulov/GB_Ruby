def multi_convert(*values)
  i = 0
  while i < values.size
    values[i] *= 1000
    i += 1
  end
  values
end

print 'Введите последовательность чисел (5 11 9...) '
puts multi_convert(*gets.split(/\s+/).map(&:to_i))
 