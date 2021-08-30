require 'set'

class Keywords
<<<<<<< HEAD
  attr_accessor: :set

  def initialize(keyword)
    @set = keyword
=======
  def initialize(item)
    @set = Set.new
    @set << item.downcase
  end

  def =(item)
    print 'Введите keyword: '
    @set << item.downcase
>>>>>>> main
  end
end

print 'Введите keyword: '
keywords = Keywords.new(gets.chomp)

p keywords
