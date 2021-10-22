# frozen_string_literal: true

str = 'abcdef'
str2 = String.new
c = str.size
i = -1
loop do
  str2[i += 1] = str[c -= 1]
  break if c.zero?
end
p str2
