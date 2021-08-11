# frozen_string_literal: true

arr = File.open(ARGV.first, 'r').readlines
puts arr[rand(0..arr.size)]
