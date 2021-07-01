if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

colors = {'красный': 1, 'оранжевый': 2, 'жёлтый': 3, 'зелёный': 4, 'голубой': 5,
				  'синий': 6, 'фиолетовый': 7}
print 'Введите цвет: '
color = gets.chomp
puts colors[:"#{color}"]
