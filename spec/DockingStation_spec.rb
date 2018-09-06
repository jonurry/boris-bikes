require 'DockingStation'

describe DockingStation do
  # it "should create a DockingStation" do
  #   expect (DockingStation.new).to be_an_instance_of(DockingStation)
  # end

  it "should respond to a message" do
    expect(subject).to respond_to :release_bike
  end

  it { should respond_to (:release_bike) }

  it "get a working bike" do
    subject.dock(Bike.new)
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  #it "dock a bike" do
    #expect(subject.dock_bike).to be_an_instance_of(Bike)
  #end
  it { should respond_to (:dock) }

  it "should raise an error if no bikes available" do
    expect {subject.release_bike}.to raise_error("Sorry, no bikes!")
  end

  it "should raise and error if docking a bike at a station that already has a bike docked" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(Bike.new)}
    expect {subject.dock(Bike.new)}.to raise_error("Sorry, no space!")
  end

  it "station has a bike" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike_store).to include(bike)
  end

  # it { should_not respond_to (:full?) }

  it "should allow capacity to be set on creation" do
    capacity = 5
    station = DockingStation.new(capacity)
    expect(station.capacity).to eq(capacity)
  end

end
