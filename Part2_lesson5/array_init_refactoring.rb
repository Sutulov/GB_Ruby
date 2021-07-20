# frozen_string_literal: true

block = proc do
  @n ||= 0
  @n += 1
  @n * 10
end
arr = Array.new(10, &block)

p arr
