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

  describe '#touch_in' do
    it { is_expected.to respond_to (:touch_in) }

    it 'check for minimum balance' do
      expect { subject.touch_in }.to raise_error "Insufficent balance"
    end
    
    it 'Should be able to touch in' do
      subject.top_up(1)
      subject.touch_in
      expect(subject.in_journey?).to eq true
    end
  end

  describe '#touch_out' do
    it { is_expected.to respond_to (:touch_out) }

    it 'Should be able to touch out' do
      subject.top_up(1)
      subject.touch_in
      subject.touch_out
      expect(subject.in_journey?).to eq false
    end
  end

  describe '#in_journey?' do
    it { is_expected.to respond_to (:in_journey?) }

    it 'is initially not in a journey' do
      expect(subject).not_to be_in_journey
    end
  end
end
