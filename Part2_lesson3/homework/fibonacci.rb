# frozen_string_literal: true

require_relative 'lib/general'

print 'Введите число: '
Formula.fibonacci(gets.to_i) { |f| print "#{f} " }
