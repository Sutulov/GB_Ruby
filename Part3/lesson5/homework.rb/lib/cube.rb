class Cube
  attr_accessor :cubes

  def initialize(cube)
    Item.new(cube)
  end

  class Item
    attr_accessor :coordinates

    def initialize(coordinates)
      @coordinates = coordinates      
    end
end
