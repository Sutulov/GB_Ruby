# frozen_string_literal: true

class State
  def status
    @@state
  end
  
  def melt
    @state = Liquid.new
  end

  def freezze
    @state = Solid.new
  end

  def boil
    @state = Gas.new
  end

  def condense
    @state = Liquid.new
  end

  def sublime
    @state = Gas.new
  end

  def deposit
    @state = Solid.new
  end

  class Solid
    def status
      @@state
    end

    def melt
      @@state = Liquid.new
    end

    def sublime
      @@state = Gas.new
    end
  end

  class Liquid
    def status
      @@state
    end

    def freezze
      @@state = Solid.new
    end

    def boil
      @@state = Gas.new
    end
  end

  class Gas
    def status
      @@state
    end

    def condense
      @@state = Liquid.new
    end

    def deposit
      @@state = Solid.new
    end
  end
end
