require 'pg'

def connection
  ENV['RACK_ENV'] == 'test' ?
  (PG.connect dbname: 'chitter_test') : (PG.connect dbname: 'chitter')
end

