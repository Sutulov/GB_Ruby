# frozen_string_literal: true

desc 'Вывод текущего времени'
task time: :date do
  puts Time.now
end
