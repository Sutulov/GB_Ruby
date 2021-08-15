module Scope
  class << self
    def say(name)
      "Scope#say: Hello, #{name}!"
    end

    def get_greeting
      self.greeting
    end

    def get_hello
      hello
    end

    protected

    def greeting
      "Scope#greeting: Hello, world!"
    end

    private

    def hello
      "Scope#hello: Hello, world!"
    end
  end
end

puts Scope.say('Ruby')
puts Scope.get_greeting
puts Scope.get_hello

puts Scope.greeting
puts Scope.hello
