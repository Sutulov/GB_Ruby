# frozen_string_literal: true

# module find files
module DirFiles
  def scan(folder)
    entries = Dir.new(folder)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(folder, x) }

    replace(entries)
  end

  def replace(entries)
    entries.each do |item|
      if File.directory?(item)
        scan(item)
      else
        File.write(item, File.read(item).gsub('xxx', 'new'))
      end
    end
  end
end

include DirFiles

scan('.')
