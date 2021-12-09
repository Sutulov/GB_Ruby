desc 'Версия Ruby on Rails'
task ver: [:environment, :datetime] do
  puts Rails.version
end
