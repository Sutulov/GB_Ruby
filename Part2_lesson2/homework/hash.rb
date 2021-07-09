require_relative 'lib/general'

arr = PLANETS.map {|key, hash| hash}.sort

puts "Самые лёгкие: #{hash_min = PLANETS.select {|key, hash| hash < arr[3]}}"

puts "Самые тяжёлые: #{hash_max = PLANETS.select {|key, hash| hash > arr[arr.size - 4]}}"