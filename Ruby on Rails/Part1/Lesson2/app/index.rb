require 'rubygems'
require 'bundler/setup'

Bundler.require(:default, :development)

puts Faraday.post('https://gb.ru/courses').body.split("\n").size
