# frozen_string_literal: true

CONST = 100_000

# Test if number is prime
def prime(num)
  n = num > CONST ? CONST : num

  (2...n).each do |d|
    return false if (num % d).zero?
  end

  num > 1
end

puts prime(gets.chomp.to_i)
