# frozen_string_literal: true

require_relative 'lib/sum'

print 'Введите аргументы: '
puts Sum.new.sum(*gets.split(' ').map(&:to_i))
