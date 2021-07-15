# frozen_string_literal: true

require_relative 'lib/general'

print 'Введите номер недели: '
Days.week(gets.to_i) { |num| puts num }
