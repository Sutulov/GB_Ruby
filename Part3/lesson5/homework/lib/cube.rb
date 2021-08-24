# frozen_string_literal: true

# class Cube
class Cube
  attr_accessor :cubes, :cube

  @@cubes = {}

  def initialize(coordinates)
    if @@cubes.key?(coordinates)
      @@cubes.each { |key, value| @cube = value if coordinates == key }
    else
      @cube = Item.new(coordinates)
      @cube.cube { |key| @@cubes[key] = @cube }
    end
  end

  # Class Item
  class Item
    attr_accessor :coordinates

    def initialize(coordinates)
      @coordinates = coordinates
    end

    def cube
      yield coordinates
    end
  end
end
