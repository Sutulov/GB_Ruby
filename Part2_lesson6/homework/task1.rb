# frozen_string_literal: true

hash = {}
%i[first second third].each_with_index { |key, num| hash[key] = num + 1 }
puts hash
