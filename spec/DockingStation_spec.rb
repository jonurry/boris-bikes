require 'DockingStation'

describe DockingStation do
  # it "should create a DockingStation" do
  #   expect (DockingStation.new).to be_an_instance_of(DockingStation)
  # end

  it "should respond to a message" do 
    expect(subject).to respond_to :release_bike
  end

  it { should respond_to (:release_bike) }

end
