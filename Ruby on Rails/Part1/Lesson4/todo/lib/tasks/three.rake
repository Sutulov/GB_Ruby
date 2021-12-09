# frozen_string_literal: true

desc 'Вывод серии измерений даты и времени'
task :datetime_execute, [:number] do |_t, args|
  args.with_defaults(number: 2)
  p args[:number]
  args[:number].to_i.times do
    Rake::Task['datetime'].execute
  end
end
