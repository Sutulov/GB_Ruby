# frozen_string_literal: true

require 'date'
require_relative './lib/ticket'
require_relative './lib/user'
require_relative './lib/controller'

ticket = Ticket.new
ticket.set_name('Иванов Иван Иванович')
ticket.set_date(Date.new(2021, 10, 30))

user = User.new
user.set_name('Иванов Иван Иванович')
user.set_ticket(ticket)

controller = Controller.new
controller.check(user)

puts user.name
puts user.ticket.date
