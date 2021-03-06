# frozen_string_literal: true

class Ticket
  attr_accessor :price

  def initialize(price: 500)
    @price = price
  end
end

first = Ticket.new
second = Ticket.new(price: 600)

class << second
  def win
    'Ваш билет выиграл'
  end
end

puts "Цена билета first: #{first.price}"
puts first.win if first.respond_to? :win

puts "Цена билета second: #{second.price}"
puts second.win if second.respond_to? :win
