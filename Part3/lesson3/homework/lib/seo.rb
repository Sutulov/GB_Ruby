# frozen_string_literal: true

# Class seo
class Seo
  class << self
    attr_writer :title, :description, :keywords

    def data
      { title: @title, description: @description, keywords: @keywords }
    end
  end
end
