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

    it "has passengers that starts as an empty array" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")

      expect(vehicle.passengers).to eq([])
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

  describe "#add_passenger" do
    it "adds a passenger to the vehicle" do
      vehicle = Vehicle.new("2001", "Honda", "Civic")
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      jude = Passenger.new({"name" => "Jude", "age" => 20})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(vehicle.passengers).to be_empty

      vehicle.add_passenger(charlie)
      vehicle.add_passenger(jude)
      vehicle.add_passenger(taylor)

      expect(vehicle.passengers).to eq([charlie, jude, taylor])
    end
  end
end