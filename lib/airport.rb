class Airport
  DEFAULT_CAPACITY = 200
  attr_reader :planes, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    fail "No landing slots available!" if full?
    @planes << plane
    @planes[0]
  end

  def take_off(plane)
    @planes.pop
  end

  private

  def full?
    @planes.count >= capacity
  end

end
