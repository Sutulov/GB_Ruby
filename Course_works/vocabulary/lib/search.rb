# frozen_string_literal: true

# Class for search in file
class Search
  def self.words(word)
    open('lib/vocabulary.txt') do |f|
      @word2 = f.read.split.select { |str| str.start_with?(word.upcase) }
    end
    @word2.each { |str| return str if str == word.upcase }
    @word2.empty? ? 'Нет такого слова' : @word2
  end
end
