require_relative 'lib/search'

print 'Введите слово для поиска в словаре: '
puts Search.words(gets.chomp)
