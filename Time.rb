def convert(m)
	 if m == 1 then print 'Январь '
	 end
	 if m == 2 then print 'Февраль '
	 end
	 if m == 3 then print 'Март '
	 end
	 if m == 4 then print 'Апрель '
	 end
	 if m == 5 then print 'Май '
	 end
	 if m == 6 then print 'Июнь '
	 end
	 if m == 7 then print 'Июль '
	 end
	 if m == 8 then print 'Август '
	 end
	 if m == 9 then print 'Сентябрь '
	 end
	 if m == 10 then print 'Октябрь '
	 end
	 if m == 11 then print 'Ноябрь '
	 end
	 if m == 12 then print 'Декабрь '
	 end
end

date_now = Time.new
print date_now.day.to_s + ' '
convert(date_now.month)
print date_now.year.to_s
