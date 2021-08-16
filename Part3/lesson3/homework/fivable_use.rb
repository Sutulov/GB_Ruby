# frozen_string_literal: true

require_relative 'lib/fivable'

class Page
  extend Fivable::ClassMethods
  include Fivable
end

puts news = Page.instance
puts about = Page.instance
puts main = Page.instance
puts chat = Page.instance
puts sitting = Page.instance
puts users = Page.instance
puts test = chat.dup
puts test = chat.clone
puts test = Page.instance
puts test = Page.new
