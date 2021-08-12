require_relative 'lib/size'

file = File.open(ARGV.first)
puts Size.performance(file.size)
