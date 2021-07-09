# frozen_string_literal: true

result = (1..7).select(&:even?)
               .tap { |x| puts "debug: #{x}" }
               .reduce { |m, x| m + x }

p result
