class Journey
attr_accessor :entry_station, :exit_station, :journey

  def initialize 
    @entry_station = nil
    @exit_station = nil
    @journey = { "Entry Station" => @entry_station, "Exit Station" => @exit_station}
  end 
  
  
  