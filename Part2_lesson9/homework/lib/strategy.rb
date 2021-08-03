# frozen_string_literal: true

# Class Mathematical
class Mathematical
  attr_writer :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def operator(num_a, num_b)
    @strategy.do_algorithm(num_a, num_b)
  end
end

# Class Strategy
class Strategy
  def do_algorithm(_, _)
    raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"
  end
end

# Class Multiplication
class Multiplication < Strategy
  def do_algorithm(num_a, num_b)
    num_a * num_b
  end
end

# Class Addition
class Addition < Strategy
  def do_algorithm(num_a, num_b)
    num_a + num_b
  end
end

# Class Subtraction
class Subtraction < Strategy
  def do_algorithm(num_a, num_b)
    num_a - num_b
  end
end
