# frozen_string_literal: true

require 'faraday'

response = Faraday.get('https://gb.ru')
puts response.status
p response.headers
puts response.body.size
