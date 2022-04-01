require 'journey'

class Journeylog

  attr_reader :journey

  def initialize(journey = Journey.new)

  end
    def start_journey(entry_station)
      @journey = Journey.new
    end
    def current_journey

end