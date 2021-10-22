# frozen_string_literal: true

def my_loop(&block)
  loop(&block)
end

my_loop { puts 'Hello, world!' }
