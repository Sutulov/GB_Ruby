# frozen_string_literal: true

desc 'В tmp создает файл development.txt вкоторый записана текущая дата и время'
task :file_date_time do
  File.write("./tmp/#{Rails.groups.last}.txt", Time.now)
end
