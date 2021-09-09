puts file_name = 'test.pdf'
data = Array.new()
new_size = File.size(file_name) / 10
file_num = 0
bytes    = 0

puts 'File exists: ' + File.exist?(file_name).to_s

def write(num, data, name)
  File.open("#{name}x#{num}", 'w') {|f| f.write data.join}
end

file = File.open(file_name,"r")
file.each{ |line|          
     bytes += line.size
     data << line    

        if bytes >= new_size  
          bytes = 0
          file_num += 1
          write(file_num, data, file_name)
          data.clear
        elsif file.eof?
          write(file_num + 1, data, file_name)
        end
}
