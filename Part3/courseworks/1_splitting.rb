# frozen_string_literal: true

puts file_name = 'test.txt'
puts "File exists: #{File.exist? file_name}"

def check(name)
  !File.exist? name || File.size(file_name) < 10
end

raise 'The file must exist and it must be more than 10 bytes!' if check(file_name)

def write(num, data, name)
  File.open(format("#{name}x%02d", num), 'w') { |f| f.write data }
end


new_size = (File.size(file_name) / 10.0).ceil
step = 0

str = File.read(file_name)
  (0..9).each do |i|
    data = str[step, new_size]
    write(i + 1, data, file_name)
    step += new_size
  end
