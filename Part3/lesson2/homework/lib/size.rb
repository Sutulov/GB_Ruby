# frozen_string_literal: true
KILO = 1024

module Size
  def self.performance(size)
    if size > KILO && size < KILO * KILO
      "#{size / 1024} K"
    elsif size > KILO ** 2 && size < KILO ** 3
      "#{size / (KILO ** 2)} M"
    elsif size > KILO ** 3
      "#{size / (KILO ** 3)} G"
    else
      "#{size} bytes"
    end
  end
end
