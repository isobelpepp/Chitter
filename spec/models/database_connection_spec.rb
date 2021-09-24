require 'database_connection'


describe '.connection' do
  it 'sets up a connection to the database' do
    expect(PG).to receive(:connect).with(dbname: "chitter_test")
    connection
  end
  it 'it returns first value in users table' do
    connection.exec("INSERT INTO peeps (content) VALUES('My first peep');")
    database = connection.exec 'SELECT * FROM peeps;'
    expect(database[0]['content']).to eq 'My first peep'
  end
end
