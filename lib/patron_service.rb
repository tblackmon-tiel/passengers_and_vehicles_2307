class PatronService
  attr_reader :parks

  def initialize
    @parks = []
  end

  def add_park(park)
    @parks << park
  end

  def all_attendees
    @parks.map do |park|
      park.passengers.map { |passenger| passenger.name }
    end.flatten
  end
end