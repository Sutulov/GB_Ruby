print 'Введите цвета: '
colors = *gets.split(/\s+/).map(&:to_s)
loop do 
print 'Введите ещё цвет: '
check_color = *gets.split(/\s+/).map {
  |str| if str != 'stop'
           str
        else 
          break
        end
  }  

break if check_color == []
colors = colors.push(*check_color)
end
puts colors
