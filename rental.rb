class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @person = person
    @book = book
    @date = date

    @person.add_rental(self)
    @book.add_rental(self)
  end
end
