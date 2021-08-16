module Fivable
  @@cunter = 0

  def self.instance
    if @@counter == 5
      'Для этого класса уже создано 5 объектов!
      Это максимум!'
    else
      self.new
      @@cunter += 1
    end
  end

  protected :self.new
  alias dump instance
  alias clone dump
  # alias dump self.instance)
end
