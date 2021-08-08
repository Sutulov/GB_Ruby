d = Dir.new('.')
p d.entries
d.close

Dir.open('.') do |d|
  p d.entries
end

p Dir.entries '..'
