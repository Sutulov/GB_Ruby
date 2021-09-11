puts file_name = 'test.txt'
new_size = File.size(file_name) / 10
step = 0

puts 'File exists: ' + File.exist?(file_name).to_s

def write(num, data, name)
  File.open("#{name}x%02d"% num, 'w') {|f| f.write data }
end

p str = File.read(file_name)
(0..9).each_with_index { |i|
  p data = str[step, new_size]
  write(i+1, data, file_name)
  step += new_size
}
