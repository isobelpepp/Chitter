require_relative '../../lib/peep'
require_relative '../helpers/persisted_data'
require 'timecop'

describe Peep do
  describe '.create' do
    it 'creates a new peep' do
      peep = Peep.create(content: 'A peep')
      persisted_data = persisted_data_peep(peep.peep_id)
      expect(peep).to be_a Peep
      expect(peep.content).to eq('A peep')
      expect(peep.peep_id).to eq persisted_data[0]['peep_id']
    end
    it 'records the time a peep is created' do
      time = Timecop.freeze
      peep = Peep.create(content: 'A peep')
      expect(peep.created_at).to eq(time.strftime('%H:%M, %d/%m/%Y'))
    end
  end

  # 2021-09-24 13:19:49.067616 +0100
  # Time.now.strftime("%d/%m/%Y %H:%M")

  describe '.all' do
    it 'returns all the peeps in the database' do
      Peep.create(content: 'First peep')
      Peep.create(content: 'Second peep')
      peeps = Peep.all
      expect(peeps[0].content).to eq('First peep')
      expect(peeps[1].content).to eq('Second peep')
    end
  end
end
