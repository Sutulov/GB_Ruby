# frozen_string_literal: true

# Class change state of matter
class State
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

  # Class defining the behavior of a solid
  class Solid
    def status
      @state = 'solid'
    end

    def melt
      @state = Liquid.new
    end

    def sublime
      @state = Gas.new
    end
  end

  # Class defining the behavior of a liquid
  class Liquid
    def status
      @state = 'liquid'
    end

    def freezze
      @state = Solid.new
    end

    def boil
      @state = Gas.new
    end
  end

  # Class defining the behavior of a gas
  class Gas
    def status
      @state = 'gas'
    end

    def condense
      @state = Liquid.new
    end

    def deposit
      @state = Solid.new
    end
  end
end
