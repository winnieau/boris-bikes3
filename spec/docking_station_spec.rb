require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to(:dock).with(1).argument}

  it {is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    subject.dock Bike.new
    bike = subject.release_bike
    expect(bike).not_to be_broken

  end


describe '#dock' do
    it 'raises an error when full' do
      subject.capacity.times {subject.dock Bike.new}
      expect {subject.dock Bike.new}.to raise_error 'Docking station full'
    end
  end

describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      expect {subject.release_bike}.to raise_error 'No bikes available'
    end
    
    it 'does not release broken bikes' do
      bike = Bike.new
      bike.report_broken
      subject.dock bike
      expect {subject.release_bike}.to raise_error 'No bikes available' 
    end
  end
end
