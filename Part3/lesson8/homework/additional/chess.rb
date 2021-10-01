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
  (i..7).each do |i|
    trace += @arr[i][j]
    j += 1 if j < 7
  end

  (0...m).each do |j|
    p "n #{n}"
    p "m #{m}"
    trace += @arr[n][j]
    n += 1
  end

  trace != 1
end

def check(i, j)
  if line(@arr[i]) && column(j) && diagonal(i, j)
    j
  elsif j > 7
    check(i, 0)
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
