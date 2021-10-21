# Test if number is prime
def isPrime(num)
  for d in 2..(n - 1)
   if (n % d) == 0
    return false
   end
  end

  true
end

p isPrime(gets.chomp.to_i)
