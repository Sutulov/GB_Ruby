# frozen_string_literal: true

require_relative 'lib/size'

file = File.open(ARGV.first)
puts Size.performance(file.size)
