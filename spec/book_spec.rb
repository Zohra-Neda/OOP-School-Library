require './book'
# check Book creation
describe Book do
  it 'should create instance of the book class with 2 parameters' do
    book = Book.new('Title', 'Author')
    expect(book).to be_an_instance_of Book
  end
end
# test author
describe '#author' do
  it 'should create the right author' do
    book = Book.new('anger', 'jane')
    expect(book.author).to eq('jane')
  end
end
# test title
describe '#title' do
  it 'should capture the right title' do
    book = Book.new('animal farm', 'Cosmas')
    expect(book.title).to eq('animal farm')
  end
end
