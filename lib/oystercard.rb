require_relative 'journey'
require_relative 'station'

class Oystercard
  attr_reader :balance, :journey_history, :current_journey 

  LIMIT = 90
  MIN_CHARGE = 1
  
  def initialize
    @balance = 0
    @journey_history = []
    @current_journey = nil
  end

  def top_up(money)
    fail "There is a max limit of £#{LIMIT}" if @balance + money > LIMIT
    @balance += money  
  end

  def touch_in(entry_station)
    if @balance < MIN_CHARGE
      fail "Insufficient balance" 
    elsif
      @current_journey = Journey.new(entry_station)
    end
  end

  def touch_out(exit_station)
    deduct(MIN_CHARGE)
    @current_journey.end_journey(exit_station)
    @journey_history.push(@current_journey.journey)
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