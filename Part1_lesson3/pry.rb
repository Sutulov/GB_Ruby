require 'pry' # <= Подключаем гем

class Ticket
  def price
    binding.pry # <= Точка остановки
    puts 3500
  end
end

t = Ticket.new
o = Object.new
t.price

binding.pry # <= Точка остановки

o.price
