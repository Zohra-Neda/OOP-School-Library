require_relative 'app'
require 'pry'

def list_options
  'Please choose an option by entering a number:
    1 - List of all books
    2 - List of all people
    3 - Add a person
    4 - Create a book
    5 - Add a rental
    6 - List of all rental for given id
    7 - Exit'
end

def option(option, app) # rubocop:disable Metrics/CyclomaticComplexity
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
    app.stop
  else
    puts 'Invalid option, please type correct number!'
  end
end

def main
  app = App.new

  puts "Welcome to School Library App!\n\n"

  loop do
    puts list_options
    option = gets.chomp.to_i
    option(option, app)
  end
end

main
