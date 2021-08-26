# frozen_string_literal: true

# Class Integer
class Integer
  def to_a(par = 'x')
    case par
    when 'x'
      ((format('%b', self)).split '').map(&:to_i)
    when 8
      ((format('%o', self)).split '').map(&:to_i)
    when 16
      ((format('%x', self)).split '').map { |item| item }
    else
      raise 'Only parameters "8" and "16" are supported!'
    end
  end
end

p 10.to_a
p 10.to_a(8)
p 10.to_a(16)
p 10.to_a(9)
