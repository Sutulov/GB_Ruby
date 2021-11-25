# frozen_string_literal: true

require 'httparty'

response = HTTParty.get('https://gb.ru/courses')
puts response.body.lines.reduce(0) { |sum, _i| sum + 1 }
