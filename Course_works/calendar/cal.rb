require_relative 'lib/data'

today =  Time.now
last_day = Date.new(today.year, today.month, -1).day
last_week_day = (Date.new(today.year, today.month, -1).strftime '%u').to_i
n = (Time.now.strftime '%e').to_i
day = today - n * DAY
week = %w[пн вт ср чт пт сб вс]
month = Array.new(7, [])
month = week.zip(month).map { |arr| arr.reject!(&:empty?) }
start = ((day + DAY).strftime '%u').to_i - 2

puts "    #{MONTHS[(today.strftime '%b').to_sym]} #{today.year}"
month.map { |arr| puts format("% 3s\% 3s\% 3s\% 3s\% 3s\% 3s" % arr) }
