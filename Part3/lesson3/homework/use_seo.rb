require_relative 'lib/seo'

class News
  attr_accessor :date
  
  def initialize
    @data = Seo.data
  end
end

class About
  attr_accessor :phones

  def initialize
    @data = Seo.data
  end
end


Seo.title = 'О нас'
Seo.description = 'Адрес: Самара'
Seo.keywords = ['О нас', 'Адреса', 'Телефоны']


news = News.new
p news
about = About.new
p about
