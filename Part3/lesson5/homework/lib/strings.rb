# frozen_string_literal: true

# module working with input strings
module Str
  attr_accessor :lines

  ERROR = 'Цифры, пробелы, знаки препинания — не допускаются!'

  class << self
    def input
      @lines = (0..3).each_with_object({}) do |_i, lines|
        if lines.key?(str = check(gets.chomp))
          lines[str] += 1
        else
          lines[str] = 1
        end
      end
    end

    def check(line)
      raise ERROR if line == line.to_i.to_s || line.scan(/[, .;:!?]/) != []

      line
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
