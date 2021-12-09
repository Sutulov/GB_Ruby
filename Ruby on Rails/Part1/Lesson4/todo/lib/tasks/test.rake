# frozen_string_literal: true

# test:hello

namespace :test do
  desc 'Say hello'
  task :hello do
    puts 'Hello, world!'
  end
end
