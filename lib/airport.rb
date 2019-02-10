require_relative 'plane'

class Airport

  attr_reader :plane

  def initialize
    @airport = []
  end

  def display_planes
    @airport
  end

  def land(plane)
    fail 'Weather is stormy, cannot land plane' unless weather == 'Sunny'
    @airport.push(plane)
  end

  def take_off(plane)
    fail 'Weather is stormy, cannot take off' unless weather == 'Sunny'
    @airport.delete(plane)
    plane
  end

  def weather
    random_num = rand(5)
    if (random_num == 0 || random_num == 1 || random_num == 2 || random_num == 3)
      @condition = 'Sunny'
    elsif random_num == 4
      @condition = 'Stormy'
    end
    @condition
  end

end
