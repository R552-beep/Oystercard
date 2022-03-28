class Oystercard
  attr_reader :balance
  attr_reader :in_journey
  Limit = 90
  Min_charge = 1

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(money)
    fail "There is a max limit of £#{Limit}" if @balance + money > Limit
    @balance += money  
  end

  def touch_in
    fail "Insufficient balance" if @balance < Min_charge
    @in_journey = true  
  end

  def touch_out
    deduct(Min_charge)
    @in_journey = false
  end
  
  def in_journey?
    @in_journey
  end
end

private 

def deduct(money)
  @balance -= money
end  