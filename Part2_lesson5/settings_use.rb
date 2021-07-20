# frozen_string_literal: true

require_relative 'lib/settings'

settings = Settings.new do |s|
  s.hello = 'World'
  s.page = 1
  s.number = 30
end

puts settings.hello
puts settings.page
puts settings.number
