# frozen_string_literal: true

p [1, 2, 3, 4, 5].reduce([]) { |arr, n|
  arr << n if n.odd?
  arr
}
