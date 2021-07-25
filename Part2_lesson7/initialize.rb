class Ticket
  attr_accessor :price, :date

  def initialize(date:, price: 500)
    @date = date
    @price = price   
  end
end

p Ticket.instance_methods(false)
p Ticket.instance_methods
p Ticket.methods
