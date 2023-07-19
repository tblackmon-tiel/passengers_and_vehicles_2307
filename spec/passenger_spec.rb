require './lib/passenger'

RSpec.describe Passenger do
  describe "#initialize" do
    it "exists" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
      
      expect(charlie).to be_a Passenger
      expect(taylor).to be_a Passenger
    end
    
    it "has a name and age" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
      expect(taylor.age).to eq(12)
      expect(taylor.name).to eq("Taylor")
    end
  end

  describe "#adult?" do
    it "returns true if age is 18 or older, otherwise false" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.adult?).to be true
      expect(taylor.adult?).to be false
    end
  end

  describe "#driver?" do
    it "returns true if the passenger is currently the driver, otherwise false" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})

      expect(charlie.driver?).to be false
      charlie.drive

      expect(charlie.driver?).to be true
      expect(taylor.driver?).to be false
    end
  end
  
  describe "#drive" do
    it "sets the passenger as the driver" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    
      expect(charlie.driver?).to be false
      charlie.drive
    
      expect(charlie.driver?).to be true
    end
  end
end