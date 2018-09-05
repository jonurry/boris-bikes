require_relative 'Bike'


class DockingStation
attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
  @available_bikes = @bike
  unless @available_bikes > 1
    raise "there are no bikes"
    end
  @bike
  end

  def dock_bike
    if @available_bikes == 0
      @bike = bike
    else
      return "This dock is full :("
    end
  end

end
