require_relative 'database_connection'

class Peep

  attr_reader :peep_id, :content, :created_at

  def initialize(peep_id:, content:, created_at:)
    @peep_id = peep_id
    @content = content
    @created_at = created_at
  end

  def self.create(content:)
    result = connection.exec("INSERT INTO peeps (content) 
                                      VALUES ('#{content}')
                                      RETURNING peep_id, content, to_char(created_at, 'HH24:MI, DD/MM/YYYY');")
    Peep.new(peep_id: result[0]['peep_id'], content: content, created_at: result[0]['to_char'])
  end

  def self.all
    result = connection.exec("SELECT peep_id, content, to_char(created_at, 'HH24:MI, DD/MM/YYYY') FROM peeps;")
    result.map do |peep|
      Peep.new(peep_id: peep['peep_id'], content: peep['content'], created_at: peep['to_char'])
    end
  end
end
