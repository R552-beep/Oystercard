class Oystercard
  attr_reader :balance
  attr_reader :in_journey
  Limit = 90

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(money)
    fail "There is a max limit of £#{Limit}" if @balance + money > Limit
    @balance += money  
  end

  def deduct(money)
    @balance -= money
  end  

  def touch_in
    @in_journey = true
  end

  def touch_out
    @in_journey = false
  end
  
  def in_journey?
    @in_journey
  end
end