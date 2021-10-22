# frozen_string_literal: true

# Test if number is prime
def prime(num)
  n = if num > 100_000
        100_000
      else
        num
      end

  (2...n).each do |d|
    return false if (num % d).zero?
  end

  num > 1
end

puts prime(gets.chomp.to_i)
