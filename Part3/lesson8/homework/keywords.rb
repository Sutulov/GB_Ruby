<<<<<<< Updated upstream
# frozen_string_literal: true

require 'set'

# Class keywords
class Keywords
  attr_accessor :set

  def initialize
    @set = Set.new
    add
  end

  def add
    print 'Введите keyword: '
    @set << gets.chomp.downcase
  end
end

keywords = Keywords.new

keywords.add
=======
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

>>>>>>> Stashed changes
p keywords
