# frozen_string_literal: true

require_relative 'lib/ticket'

class TicketChild < Ticket
  def price
    price_format(@price)
  end
end

first = TicketChild.new(date: Time.mktime(2021, 8, 7, 10, 20))
second = TicketChild.new(date: Time.mktime(2021, 8, 7, 10, 20))

puts first <=> second

puts second.price
puts second.number
puts second.price_format(600)
