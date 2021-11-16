# frozen_string_literal: true

def solution(list)
  list.slice_when { |i, j| i + 1 != j }.to_a.map { |a| a.length < 3 ? a : "#{a.first}-#{a.last}" }.join(',')
end

arr = [-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]

p solution(arr)
