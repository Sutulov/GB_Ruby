require 'ostruct'

(0..2).each_with_object(OpenStruct.new) do |ships|
  ships.submarine (OpenStruct.new missiles: rand(20), torpedoes: rand(20), cell: [rand(10), rand(10)])
  # missile_cruiser: (OpenStruct.new missiles: rand(20)),
  # military_transport: (OpenStruct.new cargo_hold: 1000, crane: 500)
end
p submarine
p missile_cruiser
p military_transport
