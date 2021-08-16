# frozen_string_literal: true

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
puts users = Page.instance
p test = chat.dup
p test = chat.clone
puts test = Page.instance
p test = Page.new
