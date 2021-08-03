# frozen_string_literal: true

class Ticket
  def initialize(date:, price: 500)
    @price = price
    @date = date
  end

  attr_reader :price, :date
end

ticket = Ticket.new date: Time.new(2021, 7, 30, 10, 20)

p ticket.price
p ticket.date

class Ticket
  remove_method :price
  undef_method :date
end

p ticket2.price
