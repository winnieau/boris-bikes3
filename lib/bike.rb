class Bike

  def initialize
    @broken = false
  end

  def working?
   true if @broken == false 
   false
  end

  def report_broken
    @broken = true
  end

  def broken?
    @broken
  end

end
