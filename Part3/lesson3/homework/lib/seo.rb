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
      [@title, @description, @keywords]      
    end
  end
end
