def weirdcase(string)
  string.split.each { |n| n.upcase! }
end

p weirdcase(gets.chomp)
