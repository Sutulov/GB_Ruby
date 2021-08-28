# module to define all directories
module DirFiles
  def scan(folder)
    entries = Dir.new(folder)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(folder, x) }

    entries.each do |item|
      if File.directory?(item)
        scan(item)
        else
        puts item.split('/').last
      end
    end
  end
  def files
    Dir['*'].reject { |x| x.include? '.' }.each do |folder|
      puts "Каталок: #{folder}\nCодержит следующие файлы:"
      scan(folder)
    end
  end
end
