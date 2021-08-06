arr = File.open('hello.txt') do |file|
        file.map(&:itself)
      end

p arr
puts arr
