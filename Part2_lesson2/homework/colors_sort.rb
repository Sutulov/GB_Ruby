# frozen_string_literal: true

require_relative 'lib/general'

puts (colors = Colors.arr).to_s
puts colors.reject { |str| str == ' ' }
           .uniq
           .sort.to_s
