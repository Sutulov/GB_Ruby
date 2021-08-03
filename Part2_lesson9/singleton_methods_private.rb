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

  def self.count
    @@count
  end

  private_class_method :count
end

first = Ticket.new
second = Ticket.new

puts Ticket.report
puts Ticket.count
puts first.count
