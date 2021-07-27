require 'date'

class Month

DAY = 86_400
MONTHS = { Jan: 'Январь',
           Feb: 'Февраль',
           Mar: 'Март',
           Apr: 'Апрель',
           May: 'Май',
           Jun: 'Июнь',
           Jul: 'Июль',
           Aug: 'Август',
           Sep: 'Сентябрь',
           Oct: 'Октябрь',
           Mov: 'Ноябрь',
           Dec: 'Декабрь' }.freeze

  def arr_month(start, month, last_day, day)
    last_day = Date.new(today.year, today.month, -1).day
    last_week_day = (Date.new(today.year, today.month, -1).strftime '%u').to_i
    n = (Time.now.strftime '%e').to_i
day = today - n * DAY
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
