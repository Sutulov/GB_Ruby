# frozen_string_literal: true

arr = Dir['*.png']
puts arr[rand(0..arr.size - 1)]
