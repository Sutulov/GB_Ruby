# frozen_string_literal: true

require 'pry-byebug' # <= Подключаем гем

# Класс билета
class Ticket
  def price
    puts 3500
  end
end

t = Ticket.new
o = Object.new

t.price
o.price
