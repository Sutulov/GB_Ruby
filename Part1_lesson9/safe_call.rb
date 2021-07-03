# frozen_string_literal: true

object = Object.new
# another = Object.new Useless assignment to variable - another.
another = nil
p another.class
p object.class

def object.convert(value:, factor: 1000)
  value * factor
end

puts object&.convert(value: 11)
puts another&.convert(value: 5)
p another.class
