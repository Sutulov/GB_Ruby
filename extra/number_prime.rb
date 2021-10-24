# frozen_string_literal: true

require 'prime'

# Test if number is prime
def prime(num)
  num.prime?
end

puts prime(gets.chomp.to_i)
