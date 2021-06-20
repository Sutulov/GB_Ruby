# frozen_string_literal: true

require 'pry'

# Класс приветствия
class HelloWorld
  def greeting
    binding.pry
    puts 'Hello, world!'
  end
end

hello = HelloWorld.new
hello.greeting
