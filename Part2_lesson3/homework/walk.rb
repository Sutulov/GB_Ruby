arr = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]]]

def walk(arr)
  yield arr.map { |i| i = *i }
end

walk(arr) { |i| puts i }
