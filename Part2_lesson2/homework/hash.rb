# frozen_string_literal: true

require_relative 'lib/general'

puts "Самые лёгкие: #{PLANETS.sort_by { |_key, weight| weight }.take(3)}"
puts "Самые тяжёлые: #{PLANETS.sort_by { |_key, weight| weight }.drop(PLANETS.size - 3)}"
