# frozen_string_literal: true

def pop(has)
  has['pos'].pop
  has['peaks'].pop
end

def dif(has, sum, anew)
  has['peaks'] << anew.last
  has['pos'] << sum - 1
end

def check(sum, anew, has)
  last = (anew.count(anew.last) - 1)
  sum -= last if anew.count(anew.last) > 1
  dif(has, sum, anew) if anew.length > 1 && anew.uniq.length > 1
  sum += last if anew.count(anew.last) > 1
  sum
end

def pick(arr, has)
  arr.chunk_while { |i, j| i <= j }.to_a.reduce(0) do |sum, a|
    sum += a.length
    check(sum, a, has)
  end
  pop(has) if arr.last >= arr[arr.length - 2]
end

def pick_peaks(arr)
  has = { 'pos' => [], 'peaks' => [] }
  pick(arr, has) if arr.length > 1
  has
end

numbers = [3, 3, 2, 2, 1, 3, 3, 3, 3, 2, 1, 5, 5, 1, 2, 2, 2, 2, 33]
p pick_peaks(numbers)
