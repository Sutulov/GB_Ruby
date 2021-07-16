# frozen_string_literal: true

# Class for factory
class Factory
  @@counter_teddy_bear = 0
  @@counter_ball = 0
  @@counter_cube = 0
  @@counter_toys = 0

  def self.build(toy)
    @@counter_toys += 1
    case toy
    when :teddy_bear
      @@counter_teddy_bear += 1
      @teddy_bear = TeddyBear.new
    when :ball
      @@counter_ball += 1
      @ball = Ball.new
    when :cube
      @@counter_cube += 1
      @cube = Cube.new
    end
  end

  def self.total
    @@counter_toys
  end

  def self.offers
    { teddy_bear: @@counter_teddy_bear, ball: @@counter_ball, cube: @@counter_cube }
  end

  # Class creating toy of teddy bear
  class TeddyBear
  end

  # Class creating toy of ball
  class Ball
  end

  # Class creating toy of cube
  class Cube
  end
end
