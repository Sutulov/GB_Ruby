# frozen_string_literal: true

at_exit { puts 'Завершение программы' }

puts 'Эта строка выводиться.'
abort 'Аварийная остановка программы!'
# puts 'А эта уже нет!'
