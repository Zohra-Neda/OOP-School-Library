def store_data(app)
  store_people(app)
  store_books(app)
  store_rentals(app)
end

def store_people(app)
  people = []
  storage = Set.new
  app.people.each do |person|
    identifier = "#{person.name}_#{person.age}"
    identifier = "#{person.name}_#{person.specialization}" if person.instance_of?(Teacher)
    next if storage.include?(identifier)

    data = {
      name: person.name,
      age: person.age,
      type: person.class
    }

    data[:parent_permission] = !person.parent_permission if person.instance_of?(Student)
    data[:specialization] = person.specialization if person.instance_of?(Teacher)

    people << data
    storage.add(identifier)
  end

  File.write('people.json', "#{JSON.generate(people)}\n")
end

def store_books(app)
  books = []
  app.books.each do |book|
    book_data = { title: book.title, author: book.author }
    books.push(book_data) unless books.any? { |b| b[:title] == book.title && b[:author] == book.author }
  end

  File.write('books.json', "#{JSON.generate(books)}\n")
end

def store_rentals(app)
  rentals = []
  app.rentals.each do |rental|
    rental_data = {
      date: rental.date,
      book: app.books.index(rental.book),
      book_title: rental.book.title,
      person: app.people.index(rental.person),
      person_name: rental.person.name
    }

    next if rentals.any? do |r|
      r[:date] == rental_data[:date] && r[:book] == rental_data[:book] && r[:person] == rental_data[:person]
    end

    rentals.push(rental_data)
  end

  File.write('rentals.json', "#{JSON.generate(rentals)}\n")
end
