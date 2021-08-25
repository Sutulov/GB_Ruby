module Str
  attr_accessor :lines
  class << self
    def input
      @lines = (0..2).each_with_object([]) { |i, lines| lines << check(gets.chomp) }
    end

    def check(line)
      
      if line == line.to_i.to_s
        raise 'Цифры, пробелы, знаки препинания — не допускаются!'
      else
        line
      end

      # if String === line 
      #   line
      # elsif line == line.to_i.to_s
      #   line
      # else
      #   raise 'Цифры, пробелы, знаки препинания — не допускаются!'
      # end
    end

    def output
      @lines
    end
  end
end
