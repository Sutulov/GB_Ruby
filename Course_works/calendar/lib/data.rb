# frozen_string_literal: true

require 'date'

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

# Class prepares month
class Month
  DAY = 86_400

  def self.arr_month(today)
    week = %w[пн вт ср чт пт сб вс]
    month = Array.new(7, [])
    month = week.zip(month).map { |arr| arr.reject!(&:empty?) }
    n = (Time.now.strftime '%e').to_i
    day = today - n * DAY
    start = ((day + DAY).strftime '%u').to_i - 2
    last_day = Date.new(today.year, today.month, -1).day
    last_week_day = (Date.new(today.year, today.month, -1).strftime '%u').to_i
    (0..start).each { |i| month[i] << ' ' }
    (1..last_day).each do |_i|
      day += DAY
      case day.strftime '%u'
      when '1'
        month.first << " #{day.day}"
      when '2'
        month[1] << " #{day.day}"
      when '3'
        month[2] << " #{day.day}"
      when '4'
        month[3] << " #{day.day}"
      when '5'
        month[4] << " #{day.day}"
      when '6'
        month[5] << " #{day.day}"
      when '7'
        month.last << " #{day.day}"
      end
    end
    (last_week_day..6).each { |i| month[i] << ' ' }
    month
  end
end
