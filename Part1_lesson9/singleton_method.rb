# frozen_string_literal: true

object = Object.new
# another = Object.new Useless assignment to variable - another.

def object.convert(value:, factor: 1000)
  value * factor
end

puts object.convert(value: 11)
# puts another.convert(value: 5) undefined method `convert' for #<Object:0x000002c52e6a8b00>
