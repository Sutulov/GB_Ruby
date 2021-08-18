require_relative 'lib/ticket_compereble'

first = Ticket.new(price: 500)
second = Ticket.new(price: 600)
puts first < second
puts first > second
puts first >= second
puts first >= second
puts first != second
 