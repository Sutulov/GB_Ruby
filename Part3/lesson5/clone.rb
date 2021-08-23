first = Object.new
first.freeze

second = first.clone

p first.frozen?
p second.frozen?
