class Seo
  class << self
    def title=(title)
      @title = title
    end

    def description=(description)
      @description = description
    end

    def keywords=(keywords)
      @keywords = keywords
    end

    def data
      { title: @title, description: @description, keywords: @keywords }     
    end
  end
end
