class Hello
  def greeting
    puts 'Hello, world'
  end
end

h = Hello.new
o = Object.new
h.greeting
n = 5

binding.irb

m = 6
# o.greeting
