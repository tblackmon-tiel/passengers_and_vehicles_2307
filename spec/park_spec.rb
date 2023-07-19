require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do
  describe "#initialize" do
    it "exists" do
      park = Park.new("Mesa Verde", 10)

      expect(park).to be_a Park
    end

    it "has a name and admission fee" do
      park = Park.new("Mesa Verde", 10)

      expect(park.name).to eq("Mesa Verde")
      expect(park.admission_fee).to eq(10)
    end
  end
end