# frozen_string_literal: true

require_relative 'lib/general'

colors = Colors.arr

print "#{colors} \n"
print "#{colors.reject { |str| str == '' }
               .uniq
               .reject { |str| str == 'stop' }
               .sort} \n"
