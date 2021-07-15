class Ticket
  def event
    'Определяем метод event в первый раз'
  end
end

class Ticket
  def event
    'Определяем метод event во второй раз'
  end
end

ticket = Ticket.new
puts ticket.event
