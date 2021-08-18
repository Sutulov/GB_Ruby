require_relative 'lib/rainbow'

r = Rainbow.new
r.each { |c| puts c }
colors = r.map(&:upcase)
p colors
puts r.find { |c| c.start_with? 'ж' }
