require './person'
require './rental'
require './book'
describe Person do
  before(:each) do
    @person1 = Person.new(30, 'Mercy', true)
    @person2 = Person.new(50, 'Percy', true)
  end
  it 'should initialize a person' do
    expect(@person1.age).to eq(30)
  end
  it 'should be pointing to the correct variable' do
    expect(@person2.correct_name).to eq('Percy')
  end
  it 'return instance of rental' do
    person = @person2
    book = Book.new('Title', 'Author')
    rental = Rental.new('2020/10/1o', person, book)
    add_rental = person.add_rental(rental)
    expect(add_rental) == rental
  end
end
