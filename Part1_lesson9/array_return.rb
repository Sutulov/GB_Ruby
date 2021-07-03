# frozen_string_literal: true

def number(num)
  [num, num * num, num**0.5]
end

p number(7)

original, square, sqrt = number(7)
puts original
puts square
puts sqrt
