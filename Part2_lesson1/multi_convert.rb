def multi_convert(*values)
  i = 0
  while i < 4
    values[i] *= 1000
    i += 1
  end
  values
end

p multi_convert(11, 5, 7, 2)
