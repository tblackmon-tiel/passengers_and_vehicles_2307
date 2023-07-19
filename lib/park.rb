class Park
  attr_reader :name,
              :admission_price,
              :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map { |vehicle| vehicle.passengers }.flatten
  end

  def revenue
    passengers.sum { |passenger| passenger.adult? ? @admission_price : 0 }
  end

  def all_attendees
    passengers.map { |passenger| passenger.name }.sort
  end

  def minors
    passengers.map { |passenger| passenger.adult? ? nil : passenger.name }.compact.sort
  end

  def adults
    passengers.map { |passenger| passenger.adult? ? passenger.name : nil }.compact.sort
  end
end