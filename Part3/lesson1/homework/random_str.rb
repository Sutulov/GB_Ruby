# frozen_string_literal: true

arr = File.open(ARGV.first).readlines
puts arr[rand(arr.size - 1)]
