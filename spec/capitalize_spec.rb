require_relative '../nameable'
require_relative '../base_decorator'
require_relative '../capitalize_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double(:nameable, correct_name: 'mary') }
  subject(:decorator) { BaseDecorator.new(nameable) }
  subject(:capitalize) { CapitalizeDecorator.new(decorator) }

  it 'returns the capitalized correct name in put' do
    expect(capitalize.correct_name).to eq('Mary')
  end
end
