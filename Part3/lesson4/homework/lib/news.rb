# frozen_string_literal: true

# Class news
class News
  include Comparable
  attr_accessor :title, :body, :date

  def initialize(title:, body:, date:)
    @title = title
    @body = body
    @date = date
  end

  def <=>(other)
    date <=> other
  end
end
