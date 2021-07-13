# frozen_string_literal: true

def my_loop
  puts 'Начало метода'
  yield
  yield
  yield
  puts 'Завершение метода'
end
my_loop { puts 'Hello, world!' }
