require 'ostruct'

submarine = OpenStruct.new missiles: 2, torpedoes: 5
missile_cruiser = OpenStruct.new missiles: 6
military_transport = OpenStruct.new cargo_hold: 1000, crane: 500
p submarine
p missile_cruiser
p military_transport
