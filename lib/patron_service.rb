class PatronService
  attr_reader :parks

  def initialize
    @parks = []
  end

  def add_park(park)
    @parks << park
  end
end