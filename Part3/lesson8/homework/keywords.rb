require 'set'

class Keywords
  attr_accessor :set

  def initialize(item)
    @set = Set.new
    add
  end

  def add
    print 'Введите keyword: '
    @set << gets.chomp.downcase
  end
end

keywords = Keywords.new(gets.chomp)

keywords.add
p keywords
