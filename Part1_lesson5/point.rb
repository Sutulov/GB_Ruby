class Point
  def set_x(x)
  	@x = x
  end
  
  def x
    @x
  end

  def set_y(y)
    @y = y
  end

  def y
    @y
  end
end

a = Point.new
b = Point.new

a.set_x(3)
a.set_y(6)

b.set_x(-1)
b.set_y(5)

puts ((b.x - a.x)**2 + (b.y - a.y)**2)**0.5
