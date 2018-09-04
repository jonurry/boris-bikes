require_relative '../lib/DockingStation'

describe DockingStation do

it "station has a bike" do

expect(subject.bike).to be_an_instance_of(Bike)
  end
end
