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
  ONE_DAY = 86_400
  WEEK = %w[пн вт ср чт пт сб вс].freeze
  LAST_DAY = Date.new(Time.now.year, Time.now.month, -1).day

  class << self
    def data
      month = WEEK.zip(Array.new(7, [])).map { |arr| arr.reject!(&:empty?) }
      day = Time.now - (Time.now.strftime '%e').to_i * ONE_DAY
      start = ((day + ONE_DAY).strftime '%u').to_i - 2
      [month, day, start]
    end

    def arr_month
      month, day, start = *Month.data
      (0..start).each { |i| month[i] << ' ' }
      (1..LAST_DAY).each do |_i|
        day += ONE_DAY
        month[(day.strftime '%u').to_i - 1] << " #{day.day}"
      end
      month
    end
  end
end
