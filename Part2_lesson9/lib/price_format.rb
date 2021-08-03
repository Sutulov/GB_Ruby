# frozen_string_literal: true

class Ticket
  def initialize(date:, price: 500)
    @price = price
    @date = date
  end

  def price
    price_format(@price)
  end

  attr_reader :date

  private

  def price_format(price)
    format('Цена билета %.f', price)
  end
end
