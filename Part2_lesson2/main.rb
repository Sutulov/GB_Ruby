require_relative 'lib/ticket'
require_relative 'lib/user'

def user(name, price)
  ticket = Ticket.new
  ticket.set_price(price)

  user = User.new
  user.set_name(name)

  [user, ticket]
end

users = { }

session = {
  'Иванов Иван Иванович' => 1000,
  'Петров Пётр Петрович' => 1200,
  'Сидоров Сергей Владимирович' => 1100
}

users = session.map { |name, price| user(name, price) }

p users
