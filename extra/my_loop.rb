def my_loop
  loop { yield }
end

my_loop { puts 'Hello, world!'}
