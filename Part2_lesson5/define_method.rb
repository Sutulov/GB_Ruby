class HelloWorld
  define_method :cube do |arg|
    arg ** 3
  end
end

hello = HelloWorld.new
puts hello.cube(2)
