# frozen_string_literal: true

require_relative 'lib/evolution'

puts Array.new(7) { |i| HomoSapiens.ancestors[i].new }
