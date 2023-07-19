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
  end
end