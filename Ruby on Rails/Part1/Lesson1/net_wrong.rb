# frozen_string_literal: true

require 'net/http'

str = Net::HTTP.get('gb.ru', '/')
puts str
