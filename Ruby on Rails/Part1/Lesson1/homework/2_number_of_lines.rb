# frozen_string_literal: true

require 'faraday'

puts Faraday.get('https://gb.ru/courses').body.lines.reduce(0) { |sum, _i| sum + 1 }
