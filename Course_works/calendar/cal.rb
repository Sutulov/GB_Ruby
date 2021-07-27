require 'date'
require_relative 'lib/data'
today =  Time.now
last_day = Date.new(today.year, today.month, -1).day
last_week_day = (Date.new(today.year, today.month, -1).strftime '%u').to_i



puts "    #{MONTHS[(today.strftime '%b').to_sym]} #{today.year}"
n = (Time.now.strftime '%e').to_i
day = today - n * DAY
week = %w[пн вт ср чт пт сб вс]
month = Array.new(7, [])
month = week.zip(month).map { |arr| arr.reject!(&:empty?) }
start = ((day + DAY).strftime '%u').to_i - 2
(0..start).each { |i|  month[i] << ' ' }
(1..last_day).each do |i|
   day += DAY
  case day.strftime '%u'
  when '1'
    month.first << ' ' + day.day.to_s
  when '2'
    month[1] << ' ' + day.day.to_s
  when '3'
    month[2] << ' ' + day.day.to_s
  when '4'
    month[3] << ' ' + day.day.to_s
  when '5'
    month[4] << ' ' + day.day.to_s
  when '6'
    month[5] << ' ' + day.day.to_s
  when '7'
    month.last << ' ' + day.day.to_s
  end
end

(last_week_day..6).each { |i|  month[i] << ' ' }
month.map { |arr| puts format("% 3s\% 3s\% 3s\% 3s\% 3s\% 3s" % arr) }
