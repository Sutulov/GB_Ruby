module Str
  attr_accessor :lines

  class << self
    def input
      @lines = (0..3).each_with_object({}) do |i, lines| 
                                            if lines.key?(str = check(gets.chomp))
                                              lines[str] += 1
                                            else
                                              lines[str] = 1
                                            end
                                          end
    end

    def check(line)

      if line == line.to_i.to_s || line.scan(/[, .;:!]+?/) != []
        raise 'Цифры, пробелы, знаки препинания — не допускаются!'
      else
        line
      end
    end

    def output
      @lines.sort.each do |key, value| 
                         if value > 1
                           puts "#{key}(#{value})"
                         else
                          puts key
                         end
                       end
    end
  end
end
