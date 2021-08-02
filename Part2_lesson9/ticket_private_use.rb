require_relative 'lib/ticket_private'

ticket = Ticket.new date: Time.mktime(2021, 8, 5, 10, 20)

puts ticket.price
puts ticket.date
