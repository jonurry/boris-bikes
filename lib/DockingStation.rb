require_relative 'Bike'


class DockingStation
attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
  @bike
  end

  def dock_bike(bike)
  @bike = bike
  end

end
