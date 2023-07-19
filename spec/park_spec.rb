require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do
  describe "#initialize" do
    it "exists" do
      park = Park.new("Mesa Verde", 10)

      expect(park).to be_a Park
    end

    it "has a name and admission price" do
      park = Park.new("Mesa Verde", 10)

      expect(park.name).to eq("Mesa Verde")
      expect(park.admission_price).to eq(10)
    end
  end

  describe "#vehicles" do
    it "returns a list of vehicles that entered the park" do
      park = Park.new("Mesa Verde", 10)

      expect(park.vehicles).to eq([])
    end
  end

  describe "#add_vehicle" do
    it "adds a vehicle to the park" do
      park = Park.new("Mesa Verde", 10)
      fusion = Vehicle.new("2020", "Ford", "Fusion")
      yukon = Vehicle.new("2005", "GMC", "Yukon")

      expect(park.vehicles).to be_empty

      park.add_vehicle(fusion)
      park.add_vehicle(yukon)

      expect(park.vehicles).to eq([fusion, yukon])
    end
  end
end