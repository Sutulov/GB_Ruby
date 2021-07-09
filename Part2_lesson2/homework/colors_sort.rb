require_relative 'lib/general'

colors = Colors.arr

print "#{colors} \n"
print "#{colors.select { |str| str != ''}
               .uniq
               .reject { |str| str == 'stop' }
               .sort} \n"
