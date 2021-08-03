# frozen_string_literal: true

require_relative 'lib/price_format'

ticket = Ticket.new date: Time.mktime(2021, 8, 5, 10, 20)

puts ticket.price
puts ticket.date
