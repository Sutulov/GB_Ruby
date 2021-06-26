# frozen_string_literal: true

require_relative './lib/colors'

print 'Введите номер цвета: '
number = gets.to_i
p Colors.new.find(number)
