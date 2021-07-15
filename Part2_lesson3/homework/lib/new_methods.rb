class Array
  def my_map
    self.each do |i|
      yield i
    end
  end
end

class Array
  def my_select
    new = []
    self.each do |i|
      new << i if yield i
    end
    new
  end
end

class Array
  def my_reduce
    m = self.first
    self.each do |i|
      yield begin
        m += i 
        i + 5
      end
    end
  end
end
