class Oystercard
  attr_reader :balance
  Limit = 9000

  def initialize
    @balance = 0
  end

  def top_up(money)
    if @balance + money > Limit
      fail "There is a max limit of £#{Limit/100}"
    end
    @balance += money  
  end
end