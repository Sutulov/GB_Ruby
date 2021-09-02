# frozen_string_literal: true

require 'ostruct'
require 'set'

address = Set.new
address << [rand(1..10), rand(1..10)] while address.size < 9
new = address.to_a

arr = (0..2).each_with_object([]) do |i, ships|
  ships.concat([
                 "submarine_#{i + 1}" => OpenStruct.new(missiles: rand(20), torpedoes: rand(20),
                                                        cell: new.pop),
                 "missile_cruiser_#{i + 1}" => OpenStruct.new(missiles: rand(20), cell: new.pop),
                 "military_transport_#{i + 1}" => OpenStruct.new(cargo_hold: 1000, crane: 500, cell: new.pop)
               ])
end

p arr
