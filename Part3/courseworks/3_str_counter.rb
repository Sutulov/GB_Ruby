# frozen_string_literal: true

# module find files
module DirFiles
  def scan(folder)
    entries = Dir.new(folder)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(folder, x) }

    counter(entries)
  end

  def counter(entries)
    entries.each do |item|
      if File.directory?(item)
        scan(item)
      else
        File.write(item, File.read(item))
      end
    end
  end
end

include DirFiles

scan('.')
