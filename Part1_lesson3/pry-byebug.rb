require 'pry-byebug' # <= Подключаем гем

class Ticket
  def price
    puts 3500
  end
end

t = Ticket.new
o = Object.new
t.price

binding.pry # <= Точка остановки

t.price
o.price
