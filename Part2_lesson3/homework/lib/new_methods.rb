class Array
  def my_map
    self.each do |i|
      yield i
    end
  end
end

class Array
  def my_select
    self.each do |i|
      yield i
    end
  end
end

class Array
  def my_reduce
    yield self
  end
end
