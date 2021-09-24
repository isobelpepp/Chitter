require_relative '../../lib/database_connection'

def truncate_database
  connection.exec("TRUNCATE peeps;")
end
