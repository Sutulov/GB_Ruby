# frozen_string_literal: true

class Shop
  def method_missing(m)
    puts m
    puts 'Такого метода нет'
  end
end

shop = Shop.new
shop.buy_apple
