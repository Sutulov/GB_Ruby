# frozen_string_literal: true

require_relative 'lib/data'

today = Time.now

puts "     #{MONTHS[(today.strftime '%b').to_sym]} #{today.year}"
month = Month.arr_month(today)
month.map do |arr|
  arr.map do |str|
    if str == " #{today.day}"
      print format("\e[31m%3s\e[0m", str)
    else
      print format('%3s', str)
    end
  end
  puts
end
