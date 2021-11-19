# frozen_string_literal: true

def zeros(num)
  sum = 0
  if num > 4
    loop do
      num /= 5
      sum += num
      break unless num % 5 >= 1 || num > 4
    end
  end
  sum
end

puts zeros(gets.chomp.to_i)
