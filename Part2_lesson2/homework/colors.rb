require_relative 'lib/general'

colors = Colors.arr

print "#{colors.reject { |str| str == 'stop' }} \n"
