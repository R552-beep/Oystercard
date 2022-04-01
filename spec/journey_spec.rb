require 'journey'

describe Journey do

  it'#in_journey?' do
    journey = Journey.new("Bank")
    expect(journey.exit_station).to eq nil
  end

  it 'it returns true if the journey is complete' do 
    journey = Journey.new('Bank')
    journey.end_journey('Mile End')
    expect(journey.complete?).to eq true
  end 

  it ' it returns false if the journey is incomplete' do
    journey = Journey.new('Bow')
    expect(journey.complete?).to eq false
  end
  
  it 'if completed journey is true equal min charge' do
    journey = Journey.new('Oxford St')
    journey.end_journey('Bond st')
    expect(journey.fare).to eq 1
  
  end

end