def determinant(matrix)
  matrix.flatten!
  matrix[0] * matrix[3] - matrix[1] * matrix[2]
end

p determinant([[1, 3], [2, 5]])
