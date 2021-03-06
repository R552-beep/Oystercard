class Journey
attr_accessor :entry_station, :exit_station, :journey

PENALTY_FARE = 6

  def initialize(entry_station = nil) 
    @entry_station = entry_station
    @exit_station = nil
    @journey = { "Entry Station" => @entry_station }
  end 
  
  def end_journey(exit_station)
    @exit_station = exit_station
    @journey["Exit station"] = @exit_station
    @entry_station = nil
  end

   def complete?
     @entry_station == nil ? true : false
   end 
  
   def fare
    complete? ? Oystercard::MIN_CHARGE : PENALTY_FARE

   end

end
  