# frozen_string_literal: true

desc 'Список баз данных, развернутых в PostgreSQL'
task :list_of_databases do
  con = PG.connect dbname: 'postgres', user: 'alex'

  rs = con.exec 'SELECT datname FROM pg_database'
  i = 1
  loop do
    begin
      puts rs.getvalue i, 0
    rescue StandardError
      break
    end
    i += 1
  end
end
