class Ticket
  def date
  	'04.06.2021'
  end

  def price
  	3500
  end

  def name_film
  	'Трудно быть рубистом'
  end

  def seat
  	12
  end	

  def row
  	4
  end
end

ticket = Ticket.new
p 'Дата фильма: ' + ticket.date
p 'Стоимость фильма: ' + ticket.price.to_s
p 'Название фильма: ' + ticket.name_film
p 'Место: ' + ticket.seat.to_s
p 'Ряд: ' + ticket.row.to_s
