# frozen_string_literal: true

require_relative 'lib/dir_files'

# Module InputFiles
module InputFiles
  extend DirFiles
  def self.files
    Dir['*'].reject { |x| x.include? '.' }.each do |folder|
      puts "Каталок: #{folder}\nCодержит следующие файлы:"
      scan(folder)
    end
  end
end

InputFiles.files
