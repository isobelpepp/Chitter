require_relative '../lib/peep'
require 'persisted_data'

describe Peep do
  describe '.create' do
    it 'creates a new peep' do
      peep = Peep.create(content: 'A peep')
      persisted_data = persisted_data_peep(peep.peep_id)
      expect(peep).to be_a Peep
      expect(peep.content).to eq('A peep')
      expect(peep.peep_id).to eq persisted_data[0]['peep_id']
    end
  end
end
