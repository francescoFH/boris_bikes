require "docking_station"

describe DockingStation do

  it {subject.should respond_to(:release_bike)}

  it "release_bike produces a new instance of the Bike class" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it "is the bike working?" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to respond_to(:working?)
  end

  it "checks the bike is working" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike.working?).to eq true
  end

  it "docks the bike to the docking station" do
    expect(subject).to respond_to(:dock)
  end

  it "stores the bike when docked" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq subject.bikes
  end

  it "should raise an error" do
    expect { subject.release_bike }.to raise_error
  end
  
  it "remove bike from the docking_station" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.release_bike).to eq(bike)
  end

end
