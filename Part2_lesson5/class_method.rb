class HelloWorld
end

def HelloWorld.greeting
  'Hello, world!'
end

puts HelloWorld.greeting
puts HelloWorld::greeting
