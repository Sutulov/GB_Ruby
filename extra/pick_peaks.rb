# frozen_string_literal: true

def pick_peaks(arr)
  has = { 'pos' => [], 'peaks' => [] }
  if arr.length > 1
    arr.chunk_while { |i, j| i <= j }.to_a.reduce(0) do |sum, a|
      sum += a.length
      sum -= (a.count(a.last) - 1) if a.count(a.last) > 1
      if a.length > 1 && a.uniq.length > 1
        has['peaks'] << a.last
        has['pos'] << sum - 1
      end
      sum += (a.count(a.last) - 1) if a.count(a.last) > 1
      sum
    end
    if arr.last >= arr[arr.length - 2]
      has['pos'].pop
      has['peaks'].pop
    end
  end
  has
end

numbers = [3, 3, 2, 2, 1, 3, 3, 3, 3, 2, 1, 5, 5, 1, 2, 2, 2, 2, 33]
p pick_peaks(numbers)
