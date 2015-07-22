require 'docking_station'

describe DockingStation do
  it {is_expected.to respond_to :release_bike}

describe Bike do
  it {is_expected.to respond_to :working?}




  end
end
