require_relative 'lib/scope'

class HelloWorld
  extend Scope
end

puts HelloWorld.say('Ruby')
puts HelloWorld.greeting
puts HelloWorld.hello
