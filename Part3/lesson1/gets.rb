File.open('hello.txt') do |file|
  puts file.gets
  puts file.gets
  puts file.gets
  p file.gets
end
