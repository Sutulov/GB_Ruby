KILO = 1024

file = File.open(ARGV.first)
p file.size
if file.size > KILO && file.size < KILO * KILO
  puts "#{file.size / 1024} K"
elsif file.size > KILO ** 2 && file.size < KILO ** 3
  puts "#{file.size / (KILO ** 2)} M"
elsif file.size > KILO ** 3
  puts "#{file.size / (KILO ** 3)} G"
else
  puts "#{file.size} bytes"
end
