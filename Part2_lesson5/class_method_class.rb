class HelloWord
  class << self
    def greeting
      'Hello, world!'
    end
  end
end

puts HelloWord.greeting
