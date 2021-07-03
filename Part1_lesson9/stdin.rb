# frozen_string_literal: true

print 'Введите, пожалуйста, имя файла '
filename = gets.chomp

$stdin = File.open(filename)

puts gets('$$')
