# frozen_string_literal: true

# Mosule determining the size of all files
module Size
  KILO = 1024.0

  def scan(path)
    entries = Dir.new(path)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(path, x) }

    entries.reduce(0) do |counter, item|
      counter += scan(item) if File.directory?(item)
      counter += File.size(item)
    end
  end

  def performance(size)
    if size > KILO && size < KILO * KILO
      "#{(size / KILO).round(1)} K"
    elsif size > KILO**2 && size < KILO**3
      "#{(size / (KILO**2)).round(1)} M"
    elsif size > KILO**3
      "#{(size / (KILO**3)).round(1)} G"
    else
      "#{size} bytes"
    end
  end
end

include Size

path = File.join('.')
puts performance(scan(path))
