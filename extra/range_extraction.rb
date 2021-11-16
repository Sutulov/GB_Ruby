def solution(list)
  new = ''
  list.each_with_index { |num, i|
    p new += num.to_s if list[i+1] == nil || (list[i+1].abs - list[i].abs).abs != 1
  }
  new
end

arr = [-6, -3, -2, -1, 0, 1, 3, 4, 5, 7, 8, 9, 10, 11, 14, 15, 17, 18, 19, 20]

p solution(arr)
