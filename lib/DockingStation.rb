require_relative 'Bike'


class DockingStation

  DEFAULT_CAPACITY = 20
  attr_reader :bike_store, :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @bike_store = []
    @capacity = capacity
  end

  def release_bike
    fail "Sorry, no bikes!" if empty?
    @bike_store.each do |bike|
      return @bike_store.delete(bike) if bike.working?
    end
    fail 'Sorry, all available bikes are broken'
  end

  def dock(bike)
    fail "Sorry, no space!" if full?
    @bike_store << bike
  end

  private

  def full?
    @bike_store.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bike_store.empty?
  end

end
