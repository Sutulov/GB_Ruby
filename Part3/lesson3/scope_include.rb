require_relative 'lib/scope'

class HelloWorld
  include Scope
end

h = HelloWorld.new

puts h.say('Ruby')
puts h.greeting
puts h.hello
