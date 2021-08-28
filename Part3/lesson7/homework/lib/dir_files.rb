# frozen_string_literal: true

# module find files
module DirFiles
  def scan(folder)
    entries = Dir.new(folder)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(folder, x) }

    entr(entries)
  end

  def entr(entries)
    entries.each do |item|
      if File.directory?(item)
        scan(item)
      else
        puts item.split('/').last
      end
    end
  end
end
