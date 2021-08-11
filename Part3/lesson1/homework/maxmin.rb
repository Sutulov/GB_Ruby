# frozen_string_literal: true

arr = File.open(ARGV.first).readlines.minmax_by(&:size)
puts arr[1] + "Количество символов:  #{arr[1].chomp.size}"
puts arr.first + "Количество символов:  #{arr.first.chomp.size}"
