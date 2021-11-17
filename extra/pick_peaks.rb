# def pick_peaks(arr)
#   arr2 = arr.chunk_while {|i, j| i <= j }.to_a.map { |a| a.last if a.length > 1 }.compact
#   arr2.pop
#   arr2
#   arr.each_with_object({}) { |item, hash| hash if item = }
#   # {pos: [], peaks: []}
# end

# def pick_peaks(arr)
#   has = {pos: [], peaks: []}
#   sum = 0
#   arr2 = arr.chunk_while {|i, j| i <= j }.to_a.map { |a| 
#     sum += a.length
#     [a.last, sum - 1] if a.length > 1 
#   }.compact
#   arr2.pop
#   arr2
# end

def pick_peaks(arr)
  has = {pos: [], peaks: []}
  # arr2 = []
  arr.chunk_while {|i, j| i <= j }.to_a.reduce(0) { |sum, a|
    sum = sum + a.length
    # {has[pos] << a.last has[peaks] << sum - 1} if a.length > 1
    a.last if a.length > 1
    sum
  }
  has[pos]
end

numbers = [3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3]
p pick_peaks(numbers)


# hash = Hash.new
# %w(cat dog wombat).each_with_index { |item, index|
#   hash[item] = index
# }
# hash   #=> {"cat"=>0, "dog"=>1, "wombat"=>2}

# evens = (1..10).each_with_object([]) { |i, a| a << i*2 }
# #=> [2, 4, 6, 8, 10, 12, 14, 16, 18, 20]

# [0, 1, :foo].all? # => true
# [0, nil, 2].all? # => false
# [].all? # => true
