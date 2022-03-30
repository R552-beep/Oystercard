require 'journey'

describe Journey do

  it'#in_journey?' do
    journey = Journey.new("Bank")
    expect(journey.exit_station).to eq nil
  end

end