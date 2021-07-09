print 'Введите цвета: '
colors = *gets.split(/\s+/).map(&:to_s)
print 'Введите ещё цвет: '
colors = colors.push(*gets.split(/\s+/)) #.map(&:to_s)

p colors
puts colors
