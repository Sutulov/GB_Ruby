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

  today = Time.now
  week = %w[пн вт ср чт пт сб вс]
  month = Array.new(7, [])
  @month = week.zip(month).map { |arr| arr.reject!(&:empty?) }
  n = (Time.now.strftime '%e').to_i
  @day = today - n * DAY
  @start = ((@day + DAY).strftime '%u').to_i - 2
  @last_day = Date.new(today.year, today.month, -1).day
  @last_week_day = (Date.new(today.year, today.month, -1).strftime '%u').to_i

  def self.arr_month
    (0..@start).each { |i| @month[i] << ' ' }
    (1..@last_day).each do |_i|
      @day += DAY
      @month[(@day.strftime '%u').to_i - 1] << " #{@day.day}"
    end
    (@last_week_day..6).each { |i| @month[i] << ' ' }
    @month
  end
end
