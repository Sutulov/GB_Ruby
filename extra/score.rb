# frozen_string_literal: true

def check(num, sum = 0)
  case num
  when 5
    sum += 50 * (dice.count(5) - 3) if dice.count(5) > 3
    sum += 50 * dice.count(5) if dice.count(5) < 3
  when 1
    sum += 100 * (dice.count(1) - 3) + 1000 if dice.count(1) > 2
    sum += 100 * dice.count(1) if dice.count(1) < 3
  end
  sum
end

def score(dice)
  (1..6).reduce(0) do |sum, num|
    sum += num * 100 if dice.count(num) > 2 && num > 1
    sum + check(num)
  end
end

p score([5, 5, 5, 5, 1])
