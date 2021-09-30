# frozen_string_literal: true

def counting(item)
  count = 0
  File.open(item, 'r') do |f|
    f.each { |_line| count += 1 }
    puts "Строк в файле #{item}: #{count}"
  end
end

def scan(path)
  entries = Dir.new(path)
               .entries
               .reject { |x| %w[. ..].include? x }
               .map { |x| File.join(path, x) }

  entries.each do |item|
    scan(item) if File.directory?(item)
    counting(item) if File.extname(item) == '.rb'
  end
end

path = File.join('.')
scan(path)
