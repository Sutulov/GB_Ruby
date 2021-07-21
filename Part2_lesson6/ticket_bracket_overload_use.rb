require_relative 'lib/ticket_bracket_overload'

ticket = Ticket.new date: Time.mktime(2021, 7, 22, 10, 20)

p ticket[0]
p ticket[1]

ticket[0] = 600
ticket[1] = Time.mktime(2021, 7, 23, 10, 20)

p ticket[0]
p ticket[1]
