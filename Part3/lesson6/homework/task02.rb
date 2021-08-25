matrix = [
[1, 2, 3, 4],
[4, 5, 6, 5],
[7, 8, 9, 7],
[7, 5, 6, 7]
]
p  matrix
p matrix.size
size = matrix.flatten.size
if size.even?
  num = matrix.flatten[size / 2 - 1].to_i
else
  num = matrix.flatten[size / 2].to_i
end
matrix.flatten.size
puts matrix.flatten.first.to_i + matrix.flatten.last.to_i + num
