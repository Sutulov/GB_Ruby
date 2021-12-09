# frozen_string_literal: true

desc 'Проверяем работу с параметрами'
task :params, [:number] do |_t, args|
  p args[:number]
end
