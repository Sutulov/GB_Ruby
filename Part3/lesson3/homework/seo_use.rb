# frozen_string_literal: true

require_relative 'lib/seo'

# Class news
class News
  attr_accessor :date

  def initialize
    @data = Seo.data
  end
end

# Class about
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
