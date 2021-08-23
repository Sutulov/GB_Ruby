arr = [1, 2, 3, 4, 5]

arr.freeze

arr.delete(0)
p arr

def arr.say(name)
  "Hello, #{name}!"
end
puts arr.say 'world'
