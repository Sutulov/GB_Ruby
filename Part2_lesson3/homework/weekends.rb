require 'date'

def weekends
  day = Date.new(2021,1,1)
  while day != Date.new(2022,1,1) do
    yield day.strftime('%a %d %b %Y') if day.saturday? || day.sunday?
    day += 1
  end
end

weekends { |day| puts day }
