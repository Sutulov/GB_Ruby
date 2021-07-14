def fibonacci(n)
  (0..n).map do |num|
    yield (((((1 + 5**0.5) / 2)**num) - (((1 - 5**0.5) / 2)**num)) / 5**0.5).to_i
  end
end

print 'Введите число: '
fibonacci(gets.to_i) { |f| print "#{f} " }
