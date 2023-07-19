require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  describe "#initialize" do
    it "exists" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle).to be_a Vehicle
    end

    it "has a year, make and model" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "returns true/false if the vehicle is speeding or not" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      
      expect(vehicle.speeding?).to be false
    end
  end

  describe "#speed" do
    it "sets the vehicle as speeding" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.speeding?).to be false
      vehicle.speed
      
      expect(vehicle.speeding?).to be true
    end
  end
end