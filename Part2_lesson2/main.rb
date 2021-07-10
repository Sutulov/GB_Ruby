# frozen_string_literal: true

require_relative 'lib/ticket'
require_relative 'lib/user'

def user(name, price)
  ticket = Ticket.new
  ticket.price = price

  user = User.new
  user.name = name

  [user, ticket]
end

session = {
  'Иванов Иван Иванович' => 1000,
  'Петров Пётр Петрович' => 1200,
  'Сидоров Сергей Владимирович' => 1100
}

users = session.each_with_object({}) do |(name, price), collection|
  user, ticket = user(name, price)
  collection[user] = ticket
end

users.each { |user, _ticket| puts user.name }
puts users.reduce(0) { |sum, (_user, ticket)| sum + ticket.price }
