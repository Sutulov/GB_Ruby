require_relative 'lib/roman_numbers'

class Integer
  include RomanNumbers
end

p 5.roman
p 16.roman
p 23.roman
