require 'json'

def retrieve_data(app)
  retrieve_people(app)
  retrieve_books(app)
  retrieve_rentals(app)
end

def retrieve_people(app)
  people = []
  people = JSON.parse(File.read('people.json')) if File.exist?('people.json')
  people.each do |person|
    if person['type'] == 'Student'
      student = Student.new('Unknown', person['age'], person['name'], parent_permission: person['permission'])
      app.people.push(student)
    else
      teacher = Teacher.new(person['age'], person['name'], person['specialization'])
      app.people.push(teacher)
    end
  end
end

def retrieve_books(app)
  books = []
  books = JSON.parse(File.read('books.json')) if File.exist?('books.json')
  books.each do |book_data|
    book = Book.new(book_data['title'], book_data['author'])
    app.books.push(book)
  end
end

def retrieve_rentals(app)
  rentals = []
  rentals = JSON.parse(File.read('rentals.json')) if File.exist?('rentals.json')
  rentals.each do |rental_data|
    person = app.people[rental_data['person']]
    book = app.books[rental_data['book']]
    rental = Rental.new(rental_data['date'], person, book)
    app.rentals.push(rental)
  end
end
