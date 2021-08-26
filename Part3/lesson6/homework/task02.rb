# frozen_string_literal: true

MATRIX = [
  [1, 2, 3, 4],
  [4, 5, 6, 5],
  [7, 8, 9, 7],
  [7, 5, 6, 7]
].freeze

p MATRIX
puts MATRIX.each_with_index.reduce(0) { |trace, (item, i)| trace + item[i] }
