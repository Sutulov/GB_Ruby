# frozen_string_literal: true

# Класс билета в кино
class Ticket
  def set_date(date)
    @date = date
  end

  attr_reader :date, :price

  def set_price(price)
    @price = price
  end
end

fst = Ticket.new
snd = Ticket.new

fst.set_price(2000)
fst.set_date('31.10.2019')

snd.set_price(3000)
snd.set_date('02.12.2019')

puts 'Первый билет'
puts fst.price
puts fst.date

puts 'Второй билет'
puts snd.price
puts snd.date

p fst.instance_variables
