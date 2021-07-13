DAY = 86_400

def week(n)
  today = Time.now
  med = (today.strftime '%j').to_i - n * 7 + 4
  yield Array.new(7).map { (today - (med -= 1) * DAY).strftime '%d.%m.%Y' }
end

print 'Введите номер недели: '
week(gets.to_i) { |num| puts num }
