def cel2far(cel)
  cel * 1.8 + 32
end

def far2cel(far)
  (far - 32) / 1.8
end

print 'Введите 1 для перевода °F в °C или что то другое для перевода °С в °F: '
choice = gets.to_i

if choice == 1
  print 'Введите °F: '
  puts format('%.2f °C', far2cel(gets.to_f))
else
  print 'Введите °C: '
  puts format('%.2f °F', cel2far(gets.to_f))
end
