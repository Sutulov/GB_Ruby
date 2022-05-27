# frozen_string_literal: true

def summ(num, nuf, nur, sum, duf)
  sum += nuf * (dice.count(num) - 3) + nur if dice.count(num) > duf
  sum += nuf * dice.count(num) if dice.count(num) < 3
  sum
end

def check(num, sum = 0)
  summ(num, 50, 0, sum, 3) if num == 5
  summ(num, 100, 1000, sum, 2) if num == 1
  sum
end

def score(dice)
  (1..6).reduce(0) do |sum, num|
    sum += num * 100 if dice.count(num) > 2 && num > 1
    sum + check(num)
  end
end

p score([5, 5, 5, 5, 1])
