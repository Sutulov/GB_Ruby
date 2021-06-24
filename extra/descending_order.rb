def descending_order(n)
  n.to_s
  arr = []
  (0..n.size-1).each do |i|
    arr.push(n[i])
  end
  str = ''
  arr.sort.reverse.each do |i|
    str << i
  end
  return str.to_i
end