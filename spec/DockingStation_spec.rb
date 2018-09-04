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
    expect(subject.release_bike).to be_an_instance_of(Bike)
  end

  #it "dock a bike" do
    #expect(subject.dock_bike).to be_an_instance_of(Bike)
  #end
  it { should respond_to (:dock_bike) }
end
