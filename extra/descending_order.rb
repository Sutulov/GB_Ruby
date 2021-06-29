# frozen_string_literal: true

def descending_order(num)
  num.digits.sort.reverse.join.to_i
end
