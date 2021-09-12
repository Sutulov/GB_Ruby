# frozen_string_literal: true

puts file_name = 'test.txt'
puts "File exists: #{File.exist? file_name}"
raise 'The file must be more than 10 bytes!' if size = File.size(file_name) < 10
if File.exist? file_name
  p new_size = (File.size(file_name) / 10.0).ceil
  step = 0

  def write(num, data, name)
    File.open(format("#{name}x%02d", num), 'w') { |f| f.write data }
  end

  str = File.read(file_name)
  (0..9).each do |i|
    p data = str[step, new_size]
    write(i + 1, data, file_name)
    step += new_size
  end
end
