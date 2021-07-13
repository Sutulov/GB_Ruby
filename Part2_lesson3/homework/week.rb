today = Time.now
def week(n)
  yield n
end

print 'Введите номер недели: '
week(gets.to_i) { |num| puts num }

# p today.strftime '%W'
# med = 7 - (today.strftime '%u').to_i

# puts (Array.new(7).map { (today - (7 - (med += 1)) * 86_400).strftime '%d.%m.%Y' })
