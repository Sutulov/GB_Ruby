def add(n)
  @n ? @n += n : @n = n
end

puts add(gets.chomp.to_i)
p add(1)
