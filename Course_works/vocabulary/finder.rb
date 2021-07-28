require_relative 'lib/search'

print 'Введите слово для поиска в словаре: '
p Search.words(gets.chomp)
