# frozen_string_literal: true

def add_binary(first, second)
  (first + second).to_s(2)
end

puts add_binary(*gets.chomp.split.map(&:to_i))
