arr = File.open(ARGV.first, 'r').readlines.minmax_by { |x| x.size }
print arr[1] + "Количество символов:  #{arr[1].chomp.size}\n" 
puts arr.first + "Количество символов:  #{arr.first.chomp.size}"
