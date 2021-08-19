require_relative 'lib/ticket_less_more'

ticket = Ticket.new price: 600
p ticket 
str = Marshal.dump(ticket)
t = Marshal.load(str)

p t
p t == ticket
puts t.price
