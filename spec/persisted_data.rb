require 'database_connection'

def persisted_data_peep(peep_id)
  DatabaseConnection.query("SELECT * FROM peeps WHERE peep_id = #{peep_id};")
end
