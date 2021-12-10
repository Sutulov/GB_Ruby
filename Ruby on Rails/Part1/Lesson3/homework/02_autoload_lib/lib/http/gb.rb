# frozen_string_literal: true

# Class Gb
class Gb
  def self.count
    Faraday.get('https://gb.ru/courses').body.lines.count
  end
end
