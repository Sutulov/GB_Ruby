# frozen_string_literal: true

a = { x: 3, y: 7 }
b = { x: -1, y: 5 }
puts ((b[:x] - a[:x])**2 + (b[:y] - a[:y])**2)**0.5
