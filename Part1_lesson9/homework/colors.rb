require_relative 'lib/encoding'
Rus.new.encoding

colors = {'красный': 1, 'оранжевый': 2, 'жёлтый': 3, 'зелёный': 4, 'голубой': 5,
				  'синий': 6, 'фиолетовый': 7}
print 'Введите цвет: '
color = gets.chomp
puts colors[:"#{color}"]
