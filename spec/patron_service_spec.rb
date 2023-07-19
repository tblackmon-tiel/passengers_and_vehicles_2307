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

  describe "#all_attendees" do
    it "returns an array of all attendee names at all parks, alphabetically" do
      ps = PatronService.new
      mesa_verde = Park.new("Mesa Verde", 10)
      great_dunes = Park.new("Great Sand Dunes", 20)
      fusion = Vehicle.new("2020", "Ford", "Fusion")
      yukon = Vehicle.new("2005", "GMC", "Yukon")
      tyler = Passenger.new({"name" => "Tyler", "age" => 27})
      kiwi = Passenger.new({"name" => "Kiwi", "age" => 5})
      chicken = Passenger.new({"name" => "Chicken", "age" => 6})
      bill = Passenger.new({"name" => "Bill", "age" => 65})
      josh = Passenger.new({"name" => "Josh", "age" => 34})

      fusion.add_passenger(tyler)
      fusion.add_passenger(kiwi)
      fusion.add_passenger(chicken)
      yukon.add_passenger(bill)
      yukon.add_passenger(josh)

      mesa_verde.add_vehicle(fusion)
      great_dunes.add_vehicle(yukon)

      ps.add_park(mesa_verde)
      ps.add_park(great_dunes)

      expect(ps.all_attendees).to eq(["Bill", "Chicken", "Josh", "Kiwi", "Tyler"])
    end
  end

  describe "#minors" do
    it "returns an array of attendees names who are minors, alphabetically" do
      ps = PatronService.new
      mesa_verde = Park.new("Mesa Verde", 10)
      great_dunes = Park.new("Great Sand Dunes", 20)
      fusion = Vehicle.new("2020", "Ford", "Fusion")
      yukon = Vehicle.new("2005", "GMC", "Yukon")
      tyler = Passenger.new({"name" => "Tyler", "age" => 27})
      kiwi = Passenger.new({"name" => "Kiwi", "age" => 5})
      chicken = Passenger.new({"name" => "Chicken", "age" => 6})
      bill = Passenger.new({"name" => "Bill", "age" => 65})
      josh = Passenger.new({"name" => "Josh", "age" => 34})

      fusion.add_passenger(tyler)
      fusion.add_passenger(kiwi)
      fusion.add_passenger(chicken)
      yukon.add_passenger(bill)
      yukon.add_passenger(josh)

      mesa_verde.add_vehicle(fusion)
      great_dunes.add_vehicle(yukon)

      ps.add_park(mesa_verde)
      ps.add_park(great_dunes)

      expect(ps.minors).to eq(["Kiwi", "Chicken"])
    end
  end

  describe "#adults" do
    it "returns an array of attendees names who are adults, alphabetically" do
      ps = PatronService.new
      mesa_verde = Park.new("Mesa Verde", 10)
      great_dunes = Park.new("Great Sand Dunes", 20)
      fusion = Vehicle.new("2020", "Ford", "Fusion")
      yukon = Vehicle.new("2005", "GMC", "Yukon")
      tyler = Passenger.new({"name" => "Tyler", "age" => 27})
      kiwi = Passenger.new({"name" => "Kiwi", "age" => 5})
      chicken = Passenger.new({"name" => "Chicken", "age" => 6})
      bill = Passenger.new({"name" => "Bill", "age" => 65})
      josh = Passenger.new({"name" => "Josh", "age" => 34})

      fusion.add_passenger(tyler)
      fusion.add_passenger(kiwi)
      fusion.add_passenger(chicken)
      yukon.add_passenger(bill)
      yukon.add_passenger(josh)

      mesa_verde.add_vehicle(fusion)
      great_dunes.add_vehicle(yukon)

      ps.add_park(mesa_verde)
      ps.add_park(great_dunes)

      expect(ps.adults).to eq(["Tyler", "Bill", "Josh"])
    end
  end
end