hash = Hash.new
%w[first second third].each_with_index { |key, num| hash[key.to_sym] = key[0].capitalize + key[-2, 2] + "(#{num + 1})" }
puts hash
