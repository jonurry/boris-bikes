require 'DockingStation'

describe DockingStation do
  # it "should create a DockingStation" do
  #   expect (DockingStation.new).to be_an_instance_of(DockingStation)
  # end
  let(:working_bike) {double :bike}
  let(:broken_bike) {double :bike}

  it "should respond to a message" do
    expect(subject).to respond_to :release_bike
  end

  it { should respond_to (:release_bike) }

  it "get a working bike" do
    allow(working_bike).to receive(:working?).and_return(true)
    subject.dock(working_bike)
    expect(subject.release_bike.working?).to be true
    # expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  #it "dock a bike" do
    #expect(subject.dock_bike).to be_an_instance_of(Bike)
  #end
  it { should respond_to (:dock) }

  it "should raise an error if no bikes available" do
    expect {subject.release_bike}.to raise_error("Sorry, no bikes!")
  end

  it "should raise and error if docking a bike at a station that already has a bike docked" do
    DockingStation::DEFAULT_CAPACITY.times {subject.dock(double(:bike))}
    expect {subject.dock(double(:bike))}.to raise_error("Sorry, no space!")
  end

  it "station has a bike" do
    subject.dock(working_bike)
    expect(subject.bike_store).to include(bike)
  end

  # it { should_not respond_to (:full?) }

  it "should allow capacity to be set on creation" do
    capacity = 5
    station = DockingStation.new(capacity)
    expect(station.capacity).to eq(capacity)
  end

  it 'station should not release broken bikes' do
    allow(broken_bike).to receive(:working?).and_return(false)
    station = DockingStation.new()
    station.dock(broken_bike)
    expect {station.release_bike}.to raise_error("Sorry, all available bikes are broken")
  end
  it "bike_store is accurate length, regardless of bikes broken or not" do 
    station = DockingStation.new()
    station.dock(working_bike)
    station.dock(broken_bike)
    expect(station.bike_store.length).to eq 2
  end

end
