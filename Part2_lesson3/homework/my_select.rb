# frozen_string_literal: true

require_relative 'lib/new_methods'

old = [1, 2, 3, 4, 5]
puts old.my_select(&:even?)
