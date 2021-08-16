require_relative 'lib/fivable'

class Page
  extend Fivable::ClassMethods
  include Fivable
end

p news = Page.instance
p about = Page.instance
p main = Page.instance
p chat = Page.instance
p sitting = Page.instance
p users = Page.instance
p test = chat.dup
p test = chat.clone
p test = Page.instance
p test = Page.new
