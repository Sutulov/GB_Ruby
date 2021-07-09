# frozen_string_literal: true

(1..10).tap { |x| puts "original: #{x}" }
       .to_a.tap { |x| puts "array:    #{x}" }
       .select(&:even?).tap { |x| puts "evens:    #{x}" }
       .map { |x| x * x }.tap { |x| puts "squares:  #{x}" }
