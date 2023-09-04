require_relative 'app'
require_relative 'option'

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

def intro
  "Welcome to School Library App!\n\n"
end

def main
  app = App.new

  puts intro

  loop do
    puts list_options
    option = gets.chomp.to_i
    Option.option(option, app)
  end
end

main
