# Class for search in file
class Search
  def self.words(word)
    open("lib/vocabulary.txt") do |f|
      @word2 = f.read
    end
    @arr = []
    @word2.split.map do |str|
      if str == word.upcase 
        return str
      else
        @arr << str if str.start_with?(word.upcase)
      end
    end
    if @arr.empty?
      'Нет такого слова'
    else 
      @arr
    end
  end
end
