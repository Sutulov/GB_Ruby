class HelloWorld
  def greeting
    'Hello, world!'
  end
end

hel = HelloWorld.new
puts hel.send(:greeting)
