File.open('hello.txt', 'w') do |file|
  puts file.pos
  file.puts 'Цена билета: 500'
  puts file.pos
  file.puts 'Дата: 2021.8.10 20:20'
  puts file.pos
  file.puts 'Место: 3 ряд, 10 место'
  puts file.pos
end
