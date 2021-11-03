def narcissistic?(value)
  value.to_i == (value.split'').reduce(0) { |sum, num| sum += num.to_i**value.size }
end

puts narcissistic?(gets.chomp)
