class Vector
  def initialize(a, b)
    @a = a
    @b = b
  end

  class Point
    def initialize(x, y)
      @x = x
      @y = y
    end
  end

  def self.distance(a, b)
    ((b.x - a.x)**2 + (b.y - a.y)**2)**0.5
  end
end
