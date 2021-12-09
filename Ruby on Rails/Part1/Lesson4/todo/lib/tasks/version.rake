# frozen_string_literal: true

desc 'Версия Ruby on Rails'
task ver: %i[environment datetime] do
  puts Rails.version
end
