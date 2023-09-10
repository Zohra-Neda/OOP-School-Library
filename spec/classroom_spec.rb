require './classroom'
require './student'
describe Classroom do
  it 'should initialize a class' do
    classroom = Classroom.new('12')
    expect(classroom.label).to eq('12')
  end
  it 'should asign a classroom to a student' do
    classroom1 = Classroom.new('22')
    student = Student.new(classroom1, 26, 'Wasswa', true)
    classroom1.add_student(student)
    expect(student.classroom).to eq(classroom1)
  end
end
