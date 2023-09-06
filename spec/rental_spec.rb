require './person'
require './book'
require './rental'

describe Rental do
  it 'should create a rental' do
    person = Person.new(20, 'Jane', true)
    book1 = Book.new('anger games', 'Chris')
    rental = Rental.new('2022/12/09', person, book1)
    expect(rental.book) == book1
  end

  it 'should create a rental' do
    person = Person.new(20, 'Jane', true)
    book1 = Book.new('anger games', 'Chris')
    rental = Rental.new('2022/12/09', person, book1)
    expect(rental.person.name).to eq('Jane')
  end
end
