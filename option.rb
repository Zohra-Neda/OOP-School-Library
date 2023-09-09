require './retrieve_data'
require './store_data'

class Option
  def self.option(option, app) # rubocop:disable Metrics/CyclomaticComplexity
    case option
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.list_rentals
    when 7
      store_data(app)
      app.stop
    else
      puts 'Invalid option, please type correct number!'
    end
  end
end
