# frozen_string_literal: true

# Class for search in file
class Search
  def self.words(word)
    open('lib/vocabulary.txt') do |f|
      @word2 = f.read
    end
    @arr = []
    @word2.split.map do |str|
      return str if str == word.upcase

      @arr << str if str.start_with?(word.upcase)
    end
    return 'Нет такого слова' if @arr.empty?

    @arr
  end
end
