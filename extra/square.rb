def find_next_square(sq)
  if Math.sqrt(sq) % 1 == 0.0
    ((sq**0.5 + 1)**2).to_i
  else
    -1
  end
end

puts find_next_square(gets.chomp.to_i)
