first = Object.new
first.freeze

second = first.dup

p first.frozen?
p second.frozen?
