# frozen_string_literal: true

# Class for search in file
class Search
  def self.words(word)
    open('lib/vocabulary.txt') do |f|
      @word2 = f.read
    end
    arr = @word2.split.select do |str|
      str == word.upcase ? (return str) : str.start_with?(word.upcase)
    end
    arr.empty? ? 'Нет такого слова' : arr
  end
end
