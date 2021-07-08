arr = [1, 2, 3, 4, 5]

p arr.map { |x| x.even? }
p arr
p arr.reject { |x| x.even? }