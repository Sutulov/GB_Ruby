def greeting
  name = block_given? ? yield : 'world'
  "Hello, #{name}!"
end

puts greeting
puts greeting { 'Ruby' }

hello = greeting do
  print 'Пожалуйста, введите имя '
  gets.chomp
end
puts hello
