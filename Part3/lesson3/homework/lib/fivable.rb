module Fivable
  @@counter = 0

  def instance
    if @@counter == 5
      puts 'Для этого класса уже создано 5 объектов. Это максимум!'
    else
      self.new
      @@counter += 1
    end
  end

  protected

  def self.new
    super
  end

  alias clone dup
end
