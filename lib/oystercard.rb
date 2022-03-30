class Oystercard
  attr_reader :balance, :entry_station, :exit_station, :journey_history 

  Limit = 90
  Min_charge = 1

  def initialize
    @balance = 0
    @entry_station = nil
    @exit_station = nil
    @journey_history = []
  end

  def top_up(money)
    fail "There is a max limit of £#{Limit}" if @balance + money > Limit
    @balance += money  
  end

  def touch_in(entry_station)
    fail "Insufficient balance" if @balance < Min_charge
    @entry_station = entry_station
    #@in_journey = true  
  end

  def touch_out(exit_station)
    deduct(Min_charge)
    #@in_journey = false
    @exit_station = exit_station

    journey = { "Entry Station" => @entry_station, "Exit Station" => @exit_station}
    @entry_station = nil
    @exit_station = nil

    @journey_history.push (journey)
  end
  
  def in_journey?
  if @entry_station == nil 
     false
  else
     true
    
  end   
  end
end

private 

def deduct(money)
  @balance -= money
end  