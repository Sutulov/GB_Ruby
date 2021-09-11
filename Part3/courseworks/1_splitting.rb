puts file_name = 'test.txt'
new_size = File.size(file_name) / 10
file_num = 0
bytes    = 0
start = 0

puts 'File exists: ' + File.exist?(file_name).to_s

def write(num, data, name)
  File.open("#{name}x0#{num}", 'w') {|f| f.write data }
end

# file = File.open(file_name,"r")
# file.each_with_object([]) { |line, data|          
#      bytes += line.size
#      data << line    

#         if bytes >= new_size  
#           bytes = 0
#           file_num += 1
#           write(file_num, data, file_name)
#           data.clear
#         elsif file.eof?
#           write(file_num + 1, data, file_name)
#         end
# }
p str = File.read(file_name)
(0..9).each_with_index { |i|
  file_num += 1
  p data = str[start, new_size]
  write(file_num, data, file_name)
  start += new_size
}

# write(file_num, data, file_name)
