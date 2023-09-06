require './student'
describe Student do
  it 'should initialize the class variables' do
    student = Student.new(12, 30, 'cosmas', true)
    expect(student).to be_an_instance_of Student
  end
end
describe '#parent_permission' do
  it 'should show the correct parent_permission' do
    student = Student.new(12, 30, 'cosmas', false)
    expect(student.parent_permission).to be(false)
  end
end
describe '#play_hooky' do
  it 'should check the play hooky method' do
    student = Student.new(12, 37, 'cosmas', true)
    expect(student.play_hooky).to eq('¯(ツ)/¯')
  end
end
