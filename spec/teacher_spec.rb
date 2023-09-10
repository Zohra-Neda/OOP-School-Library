require './teacher'
describe Teacher do
  it 'should initialize a teacher' do
    teacher = Teacher.new(40, 'Mugema', 'Math')
    expect(teacher.name).to eq('Mugema')
    expect(teacher.age).to eq(40)
  end
end
describe '#can_use_services?' do
  it 'should be a method of the class' do
    teacher = Teacher.new(33, 'Frank', 'Eng')
    expect(teacher.can_use_services?).to be(true)
  end
end
