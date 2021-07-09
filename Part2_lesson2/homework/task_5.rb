# frozen_string_literal: true

require_relative 'lib/general'

puts(WEEK.select { |str| str.start_with?('С') })
