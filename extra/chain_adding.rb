class Integer
    def call(n)
      a = self + n
      p a
      a
    end
  end

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

  def +(n)
    @n += n
  end

end
def add(n)
  @x ? @x.sum(n) : @x = Chain.new(n)
  @x::n
  @x
end

# puts add(gets.chomp.to_i)
# p add(1).(5).(3) == 9;

# p add(1).(2).(1).(5)
# p add(5)
# f = add(1)
# p f
addTwo = add(2)
p addTwo
p addTwo + 5
p addTwo(3)
# addTwo(3).(5)
