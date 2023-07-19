class Passenger
  attr_reader :name, :age
  def initialize(details)
    @name = details["name"]
    @age = details["age"]
  end
end