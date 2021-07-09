# frozen_string_literal: true

require_relative 'lib/general'

puts(MONTHS.minmax { |str1, str2| str1.size <=> str2.size })
