# frozen_string_literal: true

matrix = [
  [1, 2, 3, 4],
  [4, 5, 6, 5],
  [7, 8, 9, 7],
  [7, 5, 6, 7]
]
p matrix
trace = 0
matrix.each_with_index { |item, i| trace += item[i] }
puts trace
