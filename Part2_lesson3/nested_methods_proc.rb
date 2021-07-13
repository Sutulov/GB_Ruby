# frozen_string_literal: true

def greeting(name, &block)
  block.call name
end

def outer(name, &block)
  greeting(name, &block)
end

str = outer('Ruby') { |name| "Hello, #{name}!" }
puts str
