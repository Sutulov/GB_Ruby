class Ticket
  @@count = 0

  def initialize
    @@count += 1
  end

  def count
    Ticket.count
  end

  class << self

    def report
      "Продано билетов: #{count}"
    end

    private

    def count
      @@count
    end
  end
end

first = Ticket.new
second = Ticket.new

puts Ticket.report
puts Ticket.count
puts first.count
