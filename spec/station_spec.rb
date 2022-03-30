require 'station'

describe Station do
    it 'station should return station name' do
    station = Station.new("Bank", 1)
    expect(station.name).to eq "Bank"
    end

    it 'station should return station zone' do
    station = Station.new("Bank", 1)
    expect(station.zone).to eq 1
    end

end