require 'date'

DAY = 86_400
ARR = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]], ['fds', 's', [1, ['df', 2]]]]

class Days
  def self.week(n)
    today = Time.now
    med = (today.strftime '%j').to_i - n * 7 + 4
    yield Array.new(7).map { (today - (med -= 1) * DAY).strftime '%d.%m.%Y' }
  end

  def self.weekends
    day = Date.new(2021,1,1)
    while day != Date.new(2022,1,1) do
      yield day.strftime('%a %d %b %Y') if day.saturday? || day.sunday?
      day += 1
    end
  end
end

class Arr
  def self.walk(arr)
    yield arr.map { |i| i = *i }
  end
end

class Formula
  def self.fibonacci(n)
    (0..n).map do |num|
      yield (((((1 + 5**0.5) / 2)**num) - (((1 - 5**0.5) / 2)**num)) / 5**0.5).to_i
    end
    puts
  end
end
