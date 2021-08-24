# class Cube 
class Cube
  attr_accessor :cubes, :cube
  @@cubes = {}

  def initialize(coordinates)
    raise 'Уже есть такой куб!' if @@cubes.key?(coordinates)
    @cube = coordinates
    Item.new(coordinates).cube { |coordinates| @@cubes[coordinates] = 1 }
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
