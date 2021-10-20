# Test if number is prime
def isPrime(num)
  !(num < 1) 
end

p isPrime(gets.chomp.to_i)
