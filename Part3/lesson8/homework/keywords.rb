require 'set'

class Keywords
  def initialize(item)
    @set = Set.new
    @set << item.downcase
  end

  def =(item)
    print 'Введите keyword: '
    @set << item.downcase
  end
end

print 'Введите keyword: '
keywords = Keywords.new(gets.chomp)

p keywords
