class Journey
attr_accessor :entry_station, :exit_station, :journey

  def initialize(entry_station) 
    @entry_station = entry_station
    @exit_station = nil
    @journey = { "Entry Station" => @entry_station }
  end 
  
  def end_journey(exit_station)
    @exit_station = exit_station
    @journey["Exit station"] = @exit_station
  end

end
  