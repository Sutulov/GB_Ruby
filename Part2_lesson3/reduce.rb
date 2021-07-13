# frozen_string_literal: true

p [1, 2, 3, 4, 5].reduce { |m, x| m * x }
p [1, 2, 3, 4, 5].reduce(&:*)
p [1, 2, 3, 4, 5].reduce(:*)
