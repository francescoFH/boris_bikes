require './lib/bike.rb'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    raise Exception.new "Sorry, there are 0 bikes available" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    @bikes << bike
  end
end
