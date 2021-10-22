# frozen_string_literal: true

require 'date'

day = Time.utc(Time.now.year)
puts day
puts day.strftime('%u')

# print 'Введите номер недели: '
# week_num = gets.to_i
# start = Date.commercial(Time.now.year, week_num, 1)
# finish = Date.commercial(Time.now.year, week_num, 7)

# (start..finish).to_a.each { |day| puts day }
