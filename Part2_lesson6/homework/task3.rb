STR = 'Возьмите текст этого задания и извлеките из него все слова, количество символов в которых
больше 5. Подсчитайте количество слов и выведите их алфавитном порядке.'.freeze

p STR.split.select { |str| str.size > 5 }.sort
