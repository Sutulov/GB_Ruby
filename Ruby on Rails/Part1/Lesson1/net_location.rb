# frozen_string_literal: true

require 'net/http'

uri = URI('http://gb.ru/')
res = Net::HTTP.get_response(uri)
puts res['location']
