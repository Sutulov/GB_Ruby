desc 'Вывод серии измерений даты и времени'
task :three_datetime do
  3.times do
    Rake::Task['datetime'].execute
  end
end
