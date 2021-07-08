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

user, ticket = user('Иванов Иван Иванович', 1000)
users[user] = ticket

user, ticket = user('Петров Пётр Петрович', 1200)
users[user] = ticket

user, ticket = user('Сидоров Сергей Владимирович', 1100)
users[user] = ticket

p users
