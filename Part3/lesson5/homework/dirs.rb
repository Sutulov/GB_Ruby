# module to define all directories
module Dirs
  def scan(path)
    entries = Dir.new(path)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(path, x) }

    entries.reduce('') do |dir, item|
      if File.directory?(item)
        scan(item)
        puts item
      end
    end
  end
end

include Dirs

path = File.join('.')

scan(path)
