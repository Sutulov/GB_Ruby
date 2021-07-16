# frozen_string_literal: true

require_relative 'lib/factory'

Factory.build(:ball)
Factory.build(:ball)
Factory.build(:ball)
Factory.build(:cube)
Factory.build(:teddy_bear)
Factory.build(:teddy_bear)

puts "Количество созданных игрушек: #{Factory.total}"
puts Factory.offers
