# frozen_string_literal: true

# Class Integer
class Integer
  def to_a
    ((format('%b', self)).split '').map(&:to_i)
  end
end

p 10.to_a
