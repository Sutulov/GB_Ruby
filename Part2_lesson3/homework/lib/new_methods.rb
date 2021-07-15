# frozen_string_literal: true

class Array
  def my_map
    new = []
    each do |i|
      new << (yield i)
    end
    new
  end
end

class Array
  def my_select
    new = []
    each do |i|
      new << i if yield i
    end
    new
  end
end

class Array
  def my_reduce(m = first)
    each do |i|
      m = yield m, i
    end
    m
  end
end
