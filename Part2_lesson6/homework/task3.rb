# frozen_string_literal: true

STR = 'Возьмите текст этого задания и извлеките из него все слова, количество символов в которых
больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.'

puts arr = STR.split(/[\s\n.,!?'-]+/)
              .select { |str| str.size > 5 }
              .map(&:downcase)
              .sort
puts arr.count
