# frozen_string_literal: true

desc 'которая подсчитывает количество строк в ruby-файлах текущего rails-проекта'
task :number_of_lines do
  def scan(path)
    entries = Dir.new(path)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(path, x) }

    entries.reduce(0) do |counter, item|
      counter += scan(item) if File.directory?(item)
      if File.extname(item) == '.rb'
        count = 0
        File.open(item, 'r') do |f|
          f.each {  |_line| count += 1 }
        end
      else
        count = 0
      end
      counter += count
    end
  end

  path = File.join('.')
  puts scan(path)
end
