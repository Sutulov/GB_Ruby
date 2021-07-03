# frozen_string_literal: true

def convert(value, factor = nil)
  return value * 1000 unless factor

  value * factor
end

puts convert(11)
puts convert(11, 1024)
