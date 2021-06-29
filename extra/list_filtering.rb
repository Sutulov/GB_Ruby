# frozen_string_literal: true

# remove all string values from the array
arr = [1, 'a', 'b', 0, 15]
def list_f(arr)
  arr.reject { |x| x.is_a? String }
end
p list_f(arr)
