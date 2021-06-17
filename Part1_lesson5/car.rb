class Car
  def set_year(year)
    @year = year
  end

  def year
    @year
  end

  def set_mileage(mileage)
    @mileage = mileage
  end

  def mileage
    @mileage
  end

  def set_last_inspection(last_inspection)
    @last_inspection = last_inspection
  end

  def last_inspection
    @last_inspection
  end
end

truck = Car.new
truck.set_year('2010')
truck.set_mileage('152000') 
truck.set_last_inspection('01.02.2021')

vesta = Car.new
vesta.set_year('2018')
vesta.set_mileage('56000')
vesta.set_last_inspection('01.06.2020')

puts 'Грузовик ' + truck.year + ' года выпуска.'
puts 'Пробег: ' + truck.mileage
puts 'Последнее ТО проводилось - ' + truck.last_inspection

puts 'Лада vesta ' + vesta.year + ' года выпуска.'
puts 'Пробег: ' + vesta.mileage
puts 'Последнее ТО проводилось - ' + vesta.last_inspection
