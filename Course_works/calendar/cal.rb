DAY = 86_400
today =  Time.now
puts today.strftime '    %B %Y'
n = (Time.now.strftime '%e').to_i
day = today - n * DAY
month = Array.new(7, []) 
week = %w[пн вт ср чт пт сб вс]
month = week.zip(month)
start = ((day + DAY).strftime '%u').to_i - 2
(0..start).each { |i|  month[i] << '  ' }
(1..31).each do |i|
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

month.map { |arr| puts arr.join }
