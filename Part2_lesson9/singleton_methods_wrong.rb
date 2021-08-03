class Ticket
  @@count = 0

  def initialize
    @@count += 1
  end

  def count
    Ticket.count
  end

  def self.report
    "Продано билетов: #{count}"
  end

  private

  def self.count
    @@count
  end
end

first = Ticket.new
second = Ticket.new

puts Ticket.report
puts Ticket.count
puts first.count
