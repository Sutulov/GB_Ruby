# frozen_string_literal: true

p [1, 2, 3, 4, 5].each_with_object([]) { |n, arr| arr << n if n.odd?; }
