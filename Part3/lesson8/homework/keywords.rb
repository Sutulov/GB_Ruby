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

p keywords
