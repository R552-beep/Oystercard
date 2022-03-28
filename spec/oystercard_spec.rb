require 'oystercard'

describe Oystercard do

  it 'A new card should have a default balance of 0' do
    expect(subject.balance).to eq 0
  end

  describe '#top_up' do
    it { is_expected.to respond_to(:top_up).with(1).argument }

    it 'top up the card' do
      expect{ subject.top_up 50 }.to change{ subject.balance }.by 50
    end

    it 'Raises an error if the maximum balance is exceeded' do
      expect { subject.top_up(1 + Oystercard::Limit) }.to raise_error "There is a max limit of £90"
    end
  end
  
  describe '#deduct' do
    it { is_expected.to respond_to(:deduct).with(1).argument }
    it 'deducts an amonut from the balance' do
    subject.top_up(50)
    expect{ subject.deduct 3}.to change{ subject.balance }.by -3
    end
  end

end
