require_relative '../../lib/database_connection'

def persisted_data_peep(peep_id)
  connection.exec("SELECT * FROM peeps WHERE peep_id = #{peep_id};")
end
