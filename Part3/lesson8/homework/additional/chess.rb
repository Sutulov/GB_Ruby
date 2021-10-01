arr = Array.new(8) { |a| a = Array.new(8) { |x| x = 0 }}

def check(item)
  result = 1
  result = nil if p item.sum == 1
  result
end

arr.each_with_index do |item, i|
  item[i] = 1 if check(item)
end

arr.each { |i| p i }
