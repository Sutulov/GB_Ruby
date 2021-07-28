# frozen_string_literal: true

# Class for search in file
class Search
  def self.words(word)
    open('lib/vocabulary.txt') do |f|
      @arr = f.read.split.select { |str| str.start_with?(word.upcase) }
    end
    @arr.each { |str| return str if str == word.upcase }
    @arr.empty? ? 'Нет такого слова' : @arr
  end
end
