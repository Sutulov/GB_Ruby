# frozen_string_literal: true

arr = (1...10).map { |item| item }
p Array.new(3) { |_i| arr.shift(3) }
@a = []
(1...10).map { |item| item }.each_slice(3) { |a| @a << a }
p @a
