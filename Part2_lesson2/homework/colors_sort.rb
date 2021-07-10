# frozen_string_literal: true

require_relative 'lib/general'

puts "#{colors = Colors.arr}"
puts "#{colors.reject { |str| str == ' ' }
               .uniq
               .sort}"
