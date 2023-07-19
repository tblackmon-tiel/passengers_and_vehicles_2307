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
end