# Class for vectors
class Vector
  attr_accessor :x1, :y1, :x2, :y2

  def initialize(x1, y1, x2, y2)
    @x1 = x1
    @y1 = y1
    @x2 = x2
    @y2 = y2
  end

  # Class for points
  class Point
    attr_accessor :x,  :y

    def initialize(x, y)
      @x = x
      @y = y
    end
  end

  def distance
    ((x2 - x1)**2 + (y2 - y1)**2)**0.5
  end
end
