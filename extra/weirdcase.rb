# frozen_string_literal: true

def weirdcase(string)
  string.split.each do |n|
    if n.size == 1
      n.upcase!
    else
      (0...n.size).each { |i| (n[i] = n[i].upcase) if i.even? }
    end
  end.join(' ')
end

p weirdcase(gets.chomp)
