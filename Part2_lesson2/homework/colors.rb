print 'Введите цвета: '
colors = *gets.split(/\s+/).map(&:to_s)
loop do 
print 'Введите ещё цвет: '
check_color = *gets.split(/\s+/).map(&:to_s)
colors = colors.push(*check_color)
break if check_color.include?('stop')
end

print "#{colors.reject { |str| str == 'stop' }} \n"