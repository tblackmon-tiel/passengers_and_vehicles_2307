class Passenger
  attr_reader :name, :age
  def initialize(details)
    @name = details["name"]
    @age = details["age"]
  end

  def adult?
    @age >= 18 ? true : false
  end
end