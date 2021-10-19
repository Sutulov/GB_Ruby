# frozen_string_literal: true

EXTENSION = '.rb'
@common_counter = 0

def counting(item)
  File.open(item, 'r') do |f|
    counter = f.reduce(0) { |count, _line| count + 1 }
    puts "Строк в файле #{item}: #{counter}"
    @common_counter += counter
  end
end

def scan(path)
  entries = Dir.new(path)
               .entries
               .reject { |x| %w[. ..].include? x }
               .map { |x| File.join(path, x) }

  entries.each do |item|
    scan(item) if File.directory?(item)
    counting(item) if File.extname(item) == EXTENSION
  end
end
puts 'Введите адрес каталога для сканирования: '
path = File.join(gets.chomp)
scan(path)
puts "Общее число строк = #{@common_counter}"
