# frozen_string_literal: true

p([1, 2, 3, 4, 5].select(&:even?).map { |x| x * x })
