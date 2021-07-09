# frozen_string_literal: true

require_relative 'lib/general'

size = MONTHS.map(&:size)
puts(MONTHS.select { |str| str.size == size.min || str.size == size.max })
