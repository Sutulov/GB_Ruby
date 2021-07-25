class Ticket
  attr_accessor :price, :date

  def initialize(date:, price: 500)
    self.date = date
    self.price = price
  end
end

ticket = Ticket.new date: Time.mktime(2021, 7, 29, 10, 20)

p ticket.price
p ticket.date
