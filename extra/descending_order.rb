def descending_order(num)
  num.to_s
  arr = []
  (0..num.size-1).each do |i|
    arr.push(num[i])
  end
  str = ''
  arr.sort.reverse.each do |i|
    str << i
  end
  return str
end