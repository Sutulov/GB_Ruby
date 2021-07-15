# frozen_string_literal: true

require_relative 'lib/new_methods'

old = [1, 2, 3, 4, 5]
new = old.my_reduce(5) { |sum, i| sum + i }
puts new
