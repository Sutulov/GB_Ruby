# frozen_string_literal: true

class Shop
  def method_missing(m, *args)
    print 'Название метода: '
    puts m
    print 'Аргументы: '
    p args
  end
end

shop = Shop.new
shop.buy_apple(42, 'set', 'get')
