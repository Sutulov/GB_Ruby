# frozen_string_literal: true

$LOAD_PATH << '.'
def say_bye
  $x = 'переменная $х из say_bye'
end

def start
  $x = 'переменная $х из start'
  puts $x
  say_bye
  puts $x
end

$x = 'переменная из голобальной области видимости'
puts $x
start
puts $x
# puts $LOAD_PATH
puts $LOAD_PATH
