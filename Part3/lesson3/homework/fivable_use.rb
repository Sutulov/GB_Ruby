require_relative 'lib/fivable'

class Page
  include Fivable
end

news = Page.instance
about = Page.instance
main = Page.instance
chat = Page.instance
sitting = Page.instance
users = Page.instance
