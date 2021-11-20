def score(dice)
  (1..6).reduce(0) { |sum, num|
    if dice.count(num) > 2
      sum += num * 100
    elsif (num == 1 || num == 5) && dice.any?(num) && dice.count(num) != 3
      sum += num * 10
    end
    sum
  }
end

p score([2, 4, 4, 5, 4])
