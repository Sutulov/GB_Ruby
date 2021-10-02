@arr = Array.new(8) { |a| a = Array.new(8) { |x| x = 0 }}

def line(item)
  item.sum != 1
end

def column(j)
  @arr.reduce(0) { |sum, item| sum + item[j] } != 1
end

def diagonal(i, j)
  trace = 0
  m = j
  n = i
  n -= 1 if i = 1
  (i..7).each do |i|
    p trace += @arr[i][j]
    j += 1 if j < 7
  end

  (0..m).each do |v|
    p "v = #{v}"
    p "n = #{n}"
    p trace += @arr[n][v]
    n += 1 if n < 7
  end
  p "11 #{@arr[0][0]}"
  p trace < 1
end

def check(i, j)
  if line(@arr[i]) && column(j) && diagonal(i, j)
    j
  else
    if j < 7
      j += 1
      check(i, j)
    end
  end
end

@arr.each_with_index do |item, i|
  if check(i, 0)
    item[check(i, 0)] = 1
  end
end

@arr.each { |i| p i }
