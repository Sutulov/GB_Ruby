# frozen_string_literal: true

class Ticket
  def initialize(date:, price: 500)
    @price = price
    @date = date
  end

  attr_accessor :price, :date
end
