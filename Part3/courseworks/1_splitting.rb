# frozen_string_literal: true

PARTS = 10.0
FORMAT = 'x'
puts file_name = 'test.txt'
puts "File exists: #{File.exist? file_name}"

def check(name)
  File.exist?(name) && File.size(name) > 9
end

raise 'The file must exist and it must be more than 10 bytes!' if !check(file_name)

def write(num, data, name)
  File.open(format("%s%s%02d", name, FORMAT, num), 'w') { |f| f.write data }
end


new_size = (File.size(file_name) / PARTS).ceil
step = 0

str = File.read(file_name)
  (0...PARTS).each do |i|
    data = str[step, new_size]
    write(i + 1, data, file_name)
    step += new_size
  end
