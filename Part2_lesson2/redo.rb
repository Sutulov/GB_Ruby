[1, 2, 3, 4, 5].each do |x|
  print x
  redo if (j ||= 0) && (j += 1) && j < 3
  puts
end
