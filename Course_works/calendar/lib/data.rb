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
  WEEK = %w[пн вт ср чт пт сб вс].freeze

  class << self
    def data
      month = WEEK.zip(Array.new(7, [])).map { |arr| arr.reject!(&:empty?) }
      day = Time.now - (Time.now.strftime '%e').to_i * DAY
      start = ((day + DAY).strftime '%u').to_i - 2
      last_day = Date.new(Time.now.year, Time.now.month, -1)
      [month, day, start, last_day.day]
    end

    def arr_month
      month, day, start, last_day = *Month.data
      (0..start).each { |i| month[i] << ' ' }
      (1..last_day).each do |_i|
        day += DAY
        month[(day.strftime '%u').to_i - 1] << " #{day.day}"
      end
      month
    end
  end
end
