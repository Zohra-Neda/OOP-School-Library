require './nameable'

describe Nameable do
  it 'raises a NotImplementedError when not implemented in a subclass' do
    nameable = double('Nameable')
    allow(nameable).to receive(:correct_name).and_raise(NotImplementedError, 'Subclasses must implement correct_name')

    expect { nameable.correct_name }.to raise_error(
      NotImplementedError, 'Subclasses must implement correct_name'
    )
  end
end
