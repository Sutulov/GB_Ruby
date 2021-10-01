@arr = Array.new(8) { |a| a = Array.new(8) { |x| x = 0 }}

def line(item)
  item.sum != 1
end

def column(j)
  @arr.reduce(0) { |sum, item| sum + item[j] } != 1
end

def diagonal(i, j)
  trace = 0
  (i..7).each do |i|
    @arr[i[j]]
    j += 1
  end
  trace != 0
end

def check(i, j)
  if line(@arr[i]) && column(j) && diagonal(i, j)
    j
  else
    j += 1
    check(i, j)
  end
end

@arr.each_with_index do |item, i|
  item[check(i, 0)] = 1
end

@arr.each { |i| p i }
