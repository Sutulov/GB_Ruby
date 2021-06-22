require 'date'
require_relative './lib/ticket'

ticket = Ticket.new
ticket.set_name('Иванов Иван Иванович')
ticket.set_date(Date.new(2021, 10, 30))

puts ticket.name
puts ticket.date
