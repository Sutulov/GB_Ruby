class Greet
  def say(name)
    "Greet#say: Hello, #{name}!"
  end
end

module Greetable
  def say(name)
    "Greetable#say: Hello, #{name}!"
  end
end

class Hello < Greet
  prepend Greetable

  def say(name)
    "Hello#say: Hello, #{name}!"
  end
end

hello = Hello.new
puts hello.say('Ruby')
p Hello.ancestors
