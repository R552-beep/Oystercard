require 'journeylog'

describe Journeylog do
  let(:journeylog) { Journeylog.new }

  context "start journey" do
  it "creates a new instance of journey with an entry station when start is called" do
  expect(journeylog.start_journey("Bank")).to be_an_instance_of(Journey)
  end
end

  context "current journey" do
    it "should return an incomplete journey" do
      # journeylog = Journeylog.new - creates a new instance of the journey log class. 
      # The Journey.new(bank) - this is the dependency injection
      # it creates a new instance of the journey class with the argument entry station
      journeylog = Journeylog.new(Journey.new("bank"))
      expect(journeylog.current_journey).to eq {entry_station => "Bank"}
    end
    # I would add another test, testing that current journey creates a new journey if there is no journey started
  end
  
  context "finish journey" do
    it "should add an exit station to the current journey method" do
      journeylog = Journeylog.new(Journey.new("Bank"))
      expect(journeylog.finish("Canary Wharf")).to eq {exit_station => "Canary Wharf"}
    end
  end
  # i would add another test, testing that the exit station is added to the current journey 
end