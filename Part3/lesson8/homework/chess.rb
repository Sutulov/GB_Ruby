arr = Array.new(8) { |x| x = [] }

arr.each_with_index { |x, i| (0..7).each_with_index {|n, j| x << [i + 1 , j + 1] }  }

p arr
