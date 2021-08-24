module Str
  attr_accessor :lines
  class << self
    def input
      @lines = ''
      (0..3).each { @lines << gets }
    end

    def output
      @lines
    end
  end
end
