def convert(value, factor = 1000)
  value * factor
end

puts convert(11)
puts convert(11, 1024)
