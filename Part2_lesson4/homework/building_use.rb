# frozen_string_literal: true

require_relative 'lib/building'

skyscraper = Building.new
puts skyscraper.name
puts "Высота #{skyscraper.height} метра"
puts "#{skyscraper.number_of_storeys} - этажа"
