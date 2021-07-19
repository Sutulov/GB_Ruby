require_relative 'lib/ticket'

first = Ticket.new(date: Time.mktime(2021, 7, 21, 10, 20))

puts "Дата билета first: #{first.date}"
puts "Цена билета first: #{first.price}"

second = Ticket.new(date: Time.mktime(2021, 7, 22, 10, 20), price: 600)

puts "Дата билета second: #{second.date}"
puts "Цена билета second: #{second.price}"
