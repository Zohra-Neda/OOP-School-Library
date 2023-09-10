require_relative '../nameable'
require_relative '../base_decorator'

describe BaseDecorator do
  let(:nameable) { double(:nameable, correct_name: 'Mary') }
  subject(:decorator) { BaseDecorator.new(nameable) }

  it 'should call the correc_name method' do
    expect(nameable).to receive(:correct_name)
    decorator.correct_name
  end

  it 'returns the correct name in put' do
    expect(decorator.correct_name).to eq('Mary')
  end
end
