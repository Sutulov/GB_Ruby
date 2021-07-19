require_relative 'lib/ticket'

first = Ticket.new
second = Ticket.new(600)

puts "Цена билета first: #{first.price}"
puts "Цена билета second: #{second.price}"
