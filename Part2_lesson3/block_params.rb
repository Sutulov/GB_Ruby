def greeting
  yield 'Hello', 'Ruby', '!'
end

greeting do |interjection, noun|
  puts "#{interjection}, #{noun}!"
end

greeting do |fst, snd, thd, fth|
  p fst
  p snd
  p thd
  p fst
end
