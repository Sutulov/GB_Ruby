# frozen_string_literal: true

require_relative 'lib/general'

arr = PLANETS.map { |_key, hash| hash }.sort

puts "Самые лёгкие: #{PLANETS.select { |_key, hash| hash < arr[3] }}"

puts "Самые тяжёлые: #{PLANETS.select { |_key, hash| hash > arr[arr.size - 4] }}"
