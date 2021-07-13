# frozen_string_literal: true

def my_loop(&block)
  return unless block_given?

  loop(&block)
end

my_loop
