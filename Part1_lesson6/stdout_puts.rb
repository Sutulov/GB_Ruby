# frozen_string_literal: true

require 'stringio'

$stdout = StringIO.new

puts 'Hello, world!'
File.write('output.log', $stdout.string)

$stdout.puts 'Hello, Ruby!'
