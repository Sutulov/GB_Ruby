class Chain
  attr_accessor :n
  def initialize(n)
    @n ? @n += n : @n = n
  end

  def call(n)
    @n += n
    self
  end

  def sum(n)
    @n += n
  end
end
def add(n)
  @x ? @x.sum(n) : @x = Chain.new(n)
  p @x::n
  @x 
end

puts add(gets.chomp.to_i)
p add(1)
p add(1).(2).(1)
