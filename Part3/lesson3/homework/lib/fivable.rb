module Fivable
    module ClassMethods
    @@counter = 0
    def instance
      if @@counter == 5
        puts 'Для этого класса уже создано 5 объектов. Это максимум!'
      else
        @@counter += 1
        self.new   
      end
    end

    protected

    def new
      super
    end
  end

  def dup
    self
  end

  alias clone dup
end
