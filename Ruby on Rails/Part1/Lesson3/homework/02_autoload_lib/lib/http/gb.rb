# frozen_string_literal: true

# Class Gb
class Gb
  def self.count
    Faraday.get('https://gb.ru/courses').body.lines.reduce(0) { |sum, _i| sum + 1 }
  end
end
