def pick_peaks(arr)
  has = {'pos' => [], 'peaks' => []}
  arr.chunk_while {|i, j| i <= j }.to_a.reduce(0) { |sum, a|
    a.uniq!
    sum = sum + a.length
    if a.length > 1
      has['peaks'] << a.last
      has['pos'] << sum - 1
    end
    sum
  }
  if arr.last >= arr[arr.length - 2]
    has['pos'].pop
    has['peaks'].pop
  end
  has
end

numbers = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]
p pick_peaks(numbers)
