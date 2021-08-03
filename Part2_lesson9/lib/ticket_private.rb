# frozen_string_literal: true

class Ticket
  def initialize(date:, price: 500)
    @price = price
    @date = date
  end

  attr_reader :price

  private

  attr_reader :date
end
