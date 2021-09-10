puts file_name = 'test.txt'
new_size = File.size(file_name) / 10
file_num = 0
bytes    = 0

puts 'File exists: ' + File.exist?(file_name).to_s

def write(num, data, name)
  File.open("#{name}x0#{num}", 'w') {|f| f.write data.join}
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
str = File.read(file_name)
(0..9).each_with_index { |i|}
p data = str[10, new_size]
# write(file_num, data, file_name)
