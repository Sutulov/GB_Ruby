# frozen_string_literal: true

require_relative 'lib/roman_numbers'

class Integer
  include RomanNumbers
end

puts 5.roman
puts 16.roman
puts 23.roman
