require 'net/http'

str = Net::HTTP.get(URI('https://gb.ru'))
puts str
