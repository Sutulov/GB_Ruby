# frozen_string_literal: true

arr = File.open(ARGV.first).readlines
arr = arr.sample(arr.size)
File.open(ARGV.first, 'w') do |file|
  arr.each { |item | file.puts item }
end
