class Car
  attr_accessor :mpg,
                :fuel_capacity,
                :odometer,
                :fuel

  def initialize(mpg, fuel_capacity)
    @mpg = mpg
    @fuel_capacity = fuel_capacity
    @odometer = 0.0
    @fuel = 0.0
  end
end
