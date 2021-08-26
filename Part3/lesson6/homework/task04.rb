# frozen_string_literal: true

# Class Array
class Array
  def for(par = 'x')
    loop { yield self } if par == 'x'
    (0..par - 1).each { yield self }
  end
end

[*1..5].for(2) { |x| puts x }
