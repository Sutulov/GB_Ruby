# frozen_string_literal: true

# Module limiting object creation
module Fivable
  # Module for add class methods
  module ClassMethods
    def instance
      @counter ||= 0
      if @counter == 5
        puts 'Для этого класса уже создано 5 объектов. Это максимум!'
      else
        @counter += 1
        new
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
