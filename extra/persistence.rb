# frozen_string_literal: true

def persistence(non)
  str = non.to_s.split ''
  num = 0
  while str.size > 1
    str = str.reduce(1) { |som, i| som * i.to_i }.to_s.split ''
    num += 1
  end
  num
end

puts persistence(gets.chomp.to_i)
