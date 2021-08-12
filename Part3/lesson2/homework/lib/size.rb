# frozen_string_literal: true

KILO = 1024.0

# Module suze for files
module Size
  def self.performance(size)
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
