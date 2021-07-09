# frozen_string_literal: true

arr = [1, 2, 3, 4, 5]

p arr.map(&:even?)
p arr
p arr.select(&:even?)
