def pick_peaks(arr)
  has = {pos: [], peaks: []}
  arr.chunk_while {|i, j| i <= j }.to_a.reduce(0) { |sum, a|
    sum = sum + a.length
    if a.length > 1
      has[:pos] << a.last
      has[:peaks] << sum - 1
    end
    sum
  }
  has
end

numbers = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]
p pick_peaks(numbers)
