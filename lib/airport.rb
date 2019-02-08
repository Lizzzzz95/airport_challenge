require_relative 'plane'

class Airport

  attr_reader :plane

  def initialize
    @airport = []
    # change 'Plane 1' & 'Plane 2' to instances of the Plane class
  end

  def land(plane)
    @airport.push(plane)
  end

  def take_off(plane)
    @airport.delete(plane)
    plane
  end

end
