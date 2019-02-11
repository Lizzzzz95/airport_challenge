require_relative 'plane'
require_relative 'traffic_controller'

class Airport

  attr_reader :planes

  def initialize
    @planes = []
  end

  def land(plane)
    if stormy
      raise 'Weather is stormy, cannot land plane'
    end
    @planes.push(plane)
  end

  def take_off(plane)
    if stormy
      raise 'Weather is stormy, cannot take off'
    end
    @planes.delete(plane)
  end

  def stormy
    [false, false, false, false, true].sample
  end

end
