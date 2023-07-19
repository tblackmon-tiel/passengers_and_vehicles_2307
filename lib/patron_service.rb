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

  def minors
    @parks.map do |park|
      # this also works, messier?
      # park.passengers.find_all { |passenger| !passenger.adult? }.map do |passenger|
      #   passenger.name
      # end
      park.passengers.map { |passenger| passenger.adult? ? nil : passenger.name }.compact
    end.flatten
  end

  def adults
    @parks.map do |park|
      park.passengers.map { |passenger| passenger.adult? ? passenger.name : nil }.compact
    end.flatten
  end
end