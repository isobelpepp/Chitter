require_relative 'database_connection'

class Peep

  attr_reader :peep_id, :content

  def initialize(peep_id:, content:)
    @peep_id = peep_id
    @content = content
  end

  def self.create(content:)
    result = DatabaseConnection.query("INSERT INTO peeps (content) 
                                      VALUES ('#{content}')
                                      RETURNING peep_id, content;")
    Peep.new(peep_id: result[0]['peep_id'], content: content)
  end
end
