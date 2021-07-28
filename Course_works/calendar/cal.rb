# frozen_string_literal: true

require_relative 'lib/data'

today = Time.now

puts "    #{MONTHS[(today.strftime '%b').to_sym]} #{today.year}"
month = Month.arr_month(today)
month.map { |arr| puts format("% 3s\e[32m% 3s\% 3s\% 3s\% 3s\% 3s\e[0m" % arr) }
