# frozen_string_literal: true

puts file_name = 'test.txt'
puts "File exists: #{File.exist? file_name}"
if File.exist? file_name
  new_size = File.size(file_name) / 10
  step = 0

  def write(num, data, name)
    File.open(format("#{name}x%02d", num), 'w') { |f| f.write data }
  end

  p str = File.read(file_name)
  (0..9).each do |i|
    p data = str[step, new_size]
    write(i + 1, data, file_name)
    step += new_size
  end
end
