# frozen_string_literal: true

if RUBY_VERSION >= '3.0.0'
  puts 'Корректная версия Ruby'
elsif RUBY_VERSION >= '2.7.0'
  puts 'Проблемная версия Ruby'
else
  puts 'Не корректная версия Ruby'
end
