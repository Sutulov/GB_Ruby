require_relative 'lib/sum'

puts Sum.new.sum(*ARGV.map(&:to_i))
