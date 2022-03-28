class Oystercard
  attr_reader :balance
  Limit = 90

  def initialize
    @balance = 0
  end

  def top_up(money)
    fail "There is a max limit of £#{Limit}" if @balance + money > Limit
    @balance += money  
  end
end