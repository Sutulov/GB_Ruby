# frozen_string_literal: true

# Класс приветствующий людей.
class Greeter
  def initialize(name = 'World')
    @name = name
  end

  def say_hi
    puts "Hi #{@name}!"
  end

  def say_bye
    puts "Bye #{@name}, come back soon."
  end
  attr_accessor :name
end

g = Greeter.new('Andy')
g.say_hi
g.say_bye
# g.@name
# puts Greeter.instance_methods(false)
puts "g.respond_to?('name') #{g.respond_to?('name')}"
puts "g.respond_to?('say_hi') #{g.respond_to?('say_hi')}"
puts "g.respond_to?('to_s') #{g.respond_to?('to_s')}"
g.name = 'Betty'
puts g
puts g.name
g.say_hi
