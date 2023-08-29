required_relative 'nameable'
required_relative 'rental'

class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = generate_id
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(date, book)
    Rental.new(date, book, self)
  end

  private

  def of_age?
    @age >= 18
  end

  def generate_id
    # Code to generate a unique ID
    rand(1..1000)
  end
end
