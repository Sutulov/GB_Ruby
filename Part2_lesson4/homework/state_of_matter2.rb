# frozen_string_literal: true

require_relative 'lib/matter'

one = Matter.new
puts one.status
one.melt
puts one.status
one.boil
puts one.status
