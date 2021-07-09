require_relative 'lib/general'

size = MONTHS.map { |str| str.size }
puts MONTHS.select { |str| str.size == size.min || str.size == size.max}
