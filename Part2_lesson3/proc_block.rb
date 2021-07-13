# frozen_string_literal: true

pr = proc { |m, n| m * n }
p (1..5).reduce(&pr)
