# frozen_string_literal: true

# Class for open class Array
class Array
  def my_map
    new = []
    each do |i|
      new << (yield i)
    end
    new
  end

  def my_select
    new = []
    each do |i|
      new << i if yield i
    end
    new
  end

  def my_reduce(num = first)
    each do |i|
      num = yield num, i
    end
    num
  end

  def walk(&block)
    each do |i|
      case i
      when String
        block.call(i)
      when Integer
        block.call(i)
      when Array
        i.walk(&block)
      end
    end
  end
end
