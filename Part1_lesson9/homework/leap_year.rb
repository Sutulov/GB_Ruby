def leap_year?(year)
  if year % 4 == 0 && (year % 100 != 0 || year % 400 == 0)
    true
  else
    false
  end
end
print 'Введите год: '
year = gets.to_i
if leap_year?(year)
  puts "#{year} год високосный!"
else
  puts "#{year} год не високосный!"
end
