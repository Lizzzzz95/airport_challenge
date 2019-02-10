require_relative 'plane'
require_relative 'traffic_controller'

class Airport

  attr_reader :plane, :airport

  def initialize
    @airport = []
  end

  def land(plane)
    if stormy
      fail 'Weather is stormy, cannot land plane'
    end
    @airport.push(plane)
  end

  def take_off(plane)
    if stormy
      fail 'Weather is stormy, cannot take off'
    end
    @airport.delete(plane)
  end

  def stormy
    [false, false, false, false, true].sample
  end

end
