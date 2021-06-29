# frozen_string_literal: true

arr = [1, 'a', 'b', 0, 15]
def list_f(arr)
  arr.reject! { |element| element == element.to_s }
end
p list_f(arr)
