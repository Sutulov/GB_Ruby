# frozen_string_literal: true

require 'date'

DAY = 86_400
DAYS_OF_WEEK = 7
ARR = [[[1, 2], 3], [4, 5, 6], [7, [8, 9]], ['fds', 's', [1, ['df', 2]]]].freeze

# Class work with days
class Days
  def self.week(num)
    today = Time.now
    med = (today.strftime '%j').to_i - num * DAYS_OF_WEEK + 4
    yield Array.new(DAYS_OF_WEEK).map { (today - (med -= 1) * DAY).strftime '%d.%m.%Y' }
  end

  def self.weekends
    day = Date.new(2021, 1, 1)
    while day != Date.new(2022, 1, 1)
      yield day.strftime('%a %d %b %Y') if day.saturday? || day.sunday?
      day += 1
    end
  end
end

# Class work with array
class Arr
  def self.walk(arr)
    yield arr.map { |i| _m = *i }
  end
end

# Class math farmulas
class Formula
  def self.fibonacci(number)
    (0..number).map do |num|
      yield (((((1 + 5**0.5) / 2)**num) - (((1 - 5**0.5) / 2)**num)) / 5**0.5).to_i
    end
    puts
  end
end
