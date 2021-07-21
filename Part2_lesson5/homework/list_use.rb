# frozen_string_literal: true

require_relative 'lib/list'

food = List.new('dgd', 2, 5)

food.each { |i| puts i }
