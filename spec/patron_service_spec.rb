require './lib/patron_service'
require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe PatronService do
  describe "#initialize" do
    it "exists" do
      ps = PatronService.new

      expect(ps).to be_a PatronService
    end

    it "starts with an empty array of parks" do
      ps = PatronService.new

      expect(ps.parks).to eq([])
    end
  end

  describe "#add_park" do
    it "adds a park to the services list of parks" do
      ps = PatronService.new
      mesa_verde = Park.new("Mesa Verde", 10)
      great_dunes = Park.new("Great Sand Dunes", 20)

      expect(ps.parks).to be_empty
      ps.add_park(mesa_verde)
      ps.add_park(great_dunes)

      expect(ps.parks).to eq([mesa_verde, great_dunes])
    end
  end
end