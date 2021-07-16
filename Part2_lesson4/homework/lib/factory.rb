class Factory
  @@counter_teddy_bear = 0
  @@counter_ball = 0
  @@counter_cube = 0
  @@counter_toys = 0

  def self.build(toy)
    @@counter_toys += 1
    case toy
    when toy = :teddy_bear
      @teddy_bear = TeddyBear.new
      @@counter_teddy_bear += 1
    when toy = :ball
      @ball = Ball.new
      @@counter_ball += 1
    when toy = :cube
      @cube = Cube.new
      @@counter_cube += 1
    end
  end

  def self.total
    @@counter_toys
  end

  def self.offers
    hash ={teddy_bear: @@counter_teddy_bear, ball: @@counter_ball, cube: @@counter_cube}
  end

  class TeddyBear

  end

  class Ball

  end

  class Cube

  end


end
