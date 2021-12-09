desc 'Проверяем работу с параметрами'
task :params, [:number] do |t, args|
  p args[:number]
end
