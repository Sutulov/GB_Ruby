class Integer
    def call(n)
      self + n
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

end
def add(n)
  @x ? @x.sum(n) : @x = Chain.new(n)
  @x::n
end

# puts add(gets.chomp.to_i)
p add(1).(5).(3) == 9;
p add(1).(2).(1).(5)
# f = add(1)
# p f
