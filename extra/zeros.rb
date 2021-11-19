# frozen_string_literal: true

def zeros(num)
  num < 5 ? 0 : (num / 5) + zeros(num / 5)
end

puts zeros(gets.chomp.to_i)
