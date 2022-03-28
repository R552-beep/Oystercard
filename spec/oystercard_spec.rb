require 'oystercard'

describe Oystercard do

  it 'A new card should have a default balance of 0' do
    expect(subject.balance).to eq 0
  end

end