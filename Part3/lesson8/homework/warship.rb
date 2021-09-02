require 'ostruct'
require 'set'

address = Set.new
while address.size < 9 do
  address << [rand(1..10), rand(1..10)]
end
new = address.to_a
p address
 
def self.cells
  [rand(1..10), rand(1..10)]
end

arr = (0..2).each_with_object([]) do |i, ships|
  ships.concat([
    ('submarine_' +  (i + 1).to_s) => OpenStruct.new(missiles: rand(20), torpedoes: rand(20), cell: cells),
    ('missile_cruiser_' +  (i + 1).to_s) => OpenStruct.new(missiles: rand(20), cell: cells),
    ('military_transport_' +  (i + 1).to_s) => OpenStruct.new(cargo_hold: 1000, crane: 500, cell: cells)
  ])
end


p arr
