# frozen_string_literal: true

require_relative 'lib/foo'

food = Foo.new({ bread: 'хлеб', meat: 'мясо' })

puts food.meat
puts food.bread
