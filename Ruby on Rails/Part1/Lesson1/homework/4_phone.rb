# frozen_string_literal: true

require 'httparty'
require 'nokogiri'
require 'json'

response = HTTParty.get('https://gb.ru/courses')
doc = response.body.scan(/8\d\d\d\d\d\d\d\d\d+/)
p doc
