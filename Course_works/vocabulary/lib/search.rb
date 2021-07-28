# Class for search in file
class Search
  def self.words(word)
    open("lib/vocabulary.txt") do |f|
      @word2 = f.read
    end
    @arr = []
    @word2.split.map do |str| 
      @arr << str if str.downcase.start_with?(word.downcase)  
    end
    @arr
  end
end
