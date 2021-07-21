# frozen_string_literal: true

NUM = 100

puts format(format('%b', NUM))
puts format(format('%o', NUM))
puts format(format('%x', NUM))
puts NUM.to_s(2)
puts NUM.to_s(8)
puts NUM.to_s(16)
