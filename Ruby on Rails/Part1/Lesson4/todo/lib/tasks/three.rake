desc 'Вывод серии измерений даты и времени'
task :datetime_execute, [:number] do |t, args|
  args.with_defaults(number: 2)
  p args[:number]
  args[:number].to_i.times do
    Rake::Task['datetime'].execute
  end
end
