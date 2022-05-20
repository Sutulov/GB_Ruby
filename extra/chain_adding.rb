# frozen_string_literal: true

# class Integer
class Integer
  def call(num)
    a = self + num
    p a
    a
  end
end

# class Chain
class Chain
  attr_accessor :num

  def initialize(num)
    @num ? @num += num : @num = num
  end

  def call(num)
    @num += num
    self
  end

  def sum(num)
    @num += num
  end

  def +(other)
    @num += other
  end
end

def add(num)
  @x ? @x.sum(num) : @x = Chain.new(num)
  @x.num
  @x
end

# puts add(gets.chomp.to_i)
# p add(1).(5).(3) == 9;

# p add(1).(2).(1).(5)
# p add(5)
# f = add(1)
# p f
add_two = add(2)
p add_two
p add_two + 5
p add_two(3)
# add_two(3).(5)
