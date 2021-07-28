def colorize(text, color_code)
  "\e[#{color_code}m#{text}\e[0m"
end

def red(text); colorize(text, 31); end
def green(text); colorize(text, 32); end

# Actual example
puts 'Importing categories [ ' + green('DONE') + ' ]'
puts 'Importing tags       [' + red('FAILED') + ']'
text = 5
puts "\e[#{31}m#{text}\e[0m"
puts "\e[31m#{text}\e"
