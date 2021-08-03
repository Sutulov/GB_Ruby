# frozen_string_literal: true

require_relative 'lib/strategy'

math = Mathematical.new(Multiplication.new)
puts math.operator(4, 5)

math.strategy = Addition.new
puts math.operator(20, 5)
