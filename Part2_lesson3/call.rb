# frozen_string_literal: true

def greeting(&block)
  block.call 'Ruby'
end

puts greeting { |name| "Hello, #{name}!" }
