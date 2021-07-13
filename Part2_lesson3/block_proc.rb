# frozen_string_literal: true

def greeting(&block)
  block.call
end

greeting { puts 'Hello, world!' }
