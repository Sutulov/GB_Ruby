module Str
  attr_accessor :lines
  class << self
    def input
      @lines = (0..2).each_with_object([]) { |i, lines| lines << check(gets.chomp) }
    end

    def check(line)
      if String === line 
        line
      else
        raise 'Цифры, пробелы, знаки препинания — не допускаются!'
      end
    end

    def output
      @lines
    end
  end
end
