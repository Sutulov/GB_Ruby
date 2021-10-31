# frozen_string_literal: true

def count_smileys(arr)
  arr.count { |e| e =~ /[:;]{1}[-~]?[)D]/ }
end

arr = [';D', ':-(', ':-)', ';~)']

p count_smileys(arr)
