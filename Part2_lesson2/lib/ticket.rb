# frozen_string_literal: true

# Class defining the ticket!
class Ticket
  def set_price(price)
    @price = price
  end

  attr_reader :price
end
