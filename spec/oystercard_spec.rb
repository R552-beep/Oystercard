require 'oystercard'

describe Oystercard do

  it 'A new card should have a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  it 'top up the card' do
    subject.top_up(50)
    expect(subject.balance).to eq 50
  end
end