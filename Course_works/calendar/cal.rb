# frozen_string_literal: true

require_relative 'lib/data'

today = Time.now

puts "    #{MONTHS[(today.strftime '%b').to_sym]} #{today.year}"
month = Month.arr_month(today)
month.map do |arr|
  arr.map do |str|
    print format('%3s', str)
  end
  puts
end
