# frozen_string_literal: true

puts (arr = Array.new(10).map { rand(0..99) }).to_s
puts "max = #{arr.max}, min = #{arr.min}"
