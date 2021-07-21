require_relative 'lib/ticket_hash'

ticket = Ticket.new date: Time.mktime(2021, 7, 22, 10, 20)

p ticket[:price]
p ticket[:date]

ticket[:price] = 600
ticket[:date] = Time.mktime(2021, 7, 23, 10, 20)

p ticket[:price]
p ticket[:date]
