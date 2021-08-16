# frozen_string_literal: true

module Size
  KILO = 1024.0

  def scan(path)
    entries = Dir.new(path)
                 .entries
                 .reject { |x| %w[. ..].include? x }
                 .map { |x| File.join(path, x) }

    entries.reduce(0) do |counter, item|
      counter += scan(item) if File.directory?(item)
      counter += (File.extname(item) == '.rb') ? File.size(item) : 0
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

extend Size

path = File.join('.')
p performance(scan(path))
