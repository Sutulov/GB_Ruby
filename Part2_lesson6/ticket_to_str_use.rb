require_relative 'lib/ticket_to_str'

ticket = Ticket.new date: Time.mktime(2021, 7, 22, 10, 20)
puts 'Билет: ' + ticket
