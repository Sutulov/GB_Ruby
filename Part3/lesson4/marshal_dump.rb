require_relative 'lib/ticket_less_more'

ticket = Ticket.new price: 600
p Marshal.dump(ticket)
