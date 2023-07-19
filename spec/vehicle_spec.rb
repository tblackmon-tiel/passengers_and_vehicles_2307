require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  describe "#initialize" do
    it "exists" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_a Vehicle
    end
  end
end