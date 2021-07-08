require_relative 'lib/ticket'
require_relative 'lib/user'

def user(name, price)
  ticket = Ticket.new
  ticket.set_price(price)

  user = User.new
  user.set_name(name)

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

users.each { |user, ticket| puts user.name }
puts users.values.map { |ticket| ticket.price }.sum
