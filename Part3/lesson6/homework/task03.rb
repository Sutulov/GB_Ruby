arr = (1...10).map { |item| item }
p Array.new(3) { |i| arr.shift(3) }
