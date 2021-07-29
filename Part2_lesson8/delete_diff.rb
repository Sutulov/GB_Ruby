class Ticket
  def initialize(date:, price: 500)
    @price = price
    @date = date
  end

  def price
    @price
  end

  def date
    @date
  end
end

ticket = Ticket.new date: Time.new(2021, 7, 30, 10, 20)

p ticket.price
p ticket.date

class CinemaTicket < Ticket
  def price
    super
  end
  remove_method :price
end

cinema = CinemaTicket.new price: 600, date: Time.new(2021, 7, 31, 10, 20)

p ticket.price
p cinema.price

class TheatreTicket < Ticket
  def date
    super
  end
  undef_method :date
end

theatre = TheatreTicket.new date: Time.new(2021, 7, 31, 10, 20)

p ticket.date
p theatre.date
