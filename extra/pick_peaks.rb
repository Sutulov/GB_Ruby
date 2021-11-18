def pick_peaks(arr)
  has = {'pos' => [], 'peaks' => []}
  arr.chunk_while {|i, j| i <= j }.to_a.reduce(0) { |sum, a|
    sum = sum + a.length
    if a.length > 1
      has['peaks'] << a.last
      has['pos'] << sum - 1
    end
    sum
  }
  has['pos'].pop
  has['peaks'].pop
  has
end

numbers = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]
p pick_peaks(numbers)
