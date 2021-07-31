
# Class defining users of Web site
class User
  attr_accessor :surname, :name, :patronymic, :email, :say

  def say
    case self
    when Moderator 
      @say = 'модератор'
    when RegularVisitor 
      @say = 'обычный посетитель'
    when Author 
      @say = 'автор материала'
    when Admin 
      @say = 'администратор'
    end
  end

  def to_s
    say
  end

  def initialize
    yield self if block_given?
  end
end
