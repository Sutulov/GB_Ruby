# frozen_string_literal: true

# Test if number is prime
def prime(num)
  (2..(num - 1)).each do |d|
    return false if (num % d).zero?
  end

  num >= 1
end

puts prime(gets.chomp.to_i)
