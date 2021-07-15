# frozen_string_literal: true

require_relative 'lib/new_methods'

m = [1, 2, 3, 4, 5].my_map { |i| i += 1 }
p m
