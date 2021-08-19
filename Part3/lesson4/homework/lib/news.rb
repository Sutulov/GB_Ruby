class News
  include Comparable
  attr_accessor :title, :body, :date

  def initialize(title:, body:, date:)
    @title = title
    @body = body
    @date = date
  end

  def <=>(news)
    date <=> news.date
  end
end
