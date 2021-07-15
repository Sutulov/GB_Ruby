# frozen_string_literal: true

require_relative 'lib/general'
require_relative 'lib/new_methods'

Arr.walk(ARR) { |i| puts i } # version №1
ARR.walk { |i| puts i }      # version №2
