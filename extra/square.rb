# frozen_string_literal: true

def find_next_square(squ)
  if (Math.sqrt(squ) % 1).zero?
    ((squ**0.5 + 1)**2).to_i
  else
    -1
  end
end

puts find_next_square(gets.chomp.to_i)
