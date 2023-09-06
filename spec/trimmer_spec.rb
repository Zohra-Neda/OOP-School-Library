require_relative '../nameable'
require_relative '../base_decorator'
require_relative '../trimmer_decorator'

describe TrimmerDecorator do
  let(:nameable) { double(:nameable, correct_name: 'marythemotherofjesus') }
  subject(:decorator) { BaseDecorator.new(nameable) }
  subject(:trimmed) { TrimmerDecorator.new(decorator) }

  it 'should trim the name to only 10 characters' do
    expect(trimmed.correct_name).to eq('marythemot')
  end
end
