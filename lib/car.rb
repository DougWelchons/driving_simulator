class Car
  attr_reader :fuel

  def initialize(mpg, fuel_capacity)
    @mpg = mpg
    @fuel_capacity = fuel_capacity
    @odometer = 0.0
    @fuel = 0.0
  end

  def add_fuel(fuel_reserves)
    until check_filled? || fuel_reserves.check_reserve?
      sleep(1)
      @fuel += 1
      fuel_reserves.remove_fuel
    end
  end

  def check_filled?
    @fuel == @fuel_capacity
  end

  def stats
    "
    ----
    Odometer: #{@odometer.round(2)}
    Fuel: #{@fuel.round(2)} gallons.
    MPG: #{@mpg}.
    Fuel Capacity: #{@fuel_capacity}.
    ----
    "
  end

  def gas_needed(distance)
    distance.to_f / @mpg.to_f
  end

  def drive(distance)
    trip = gas_needed(distance)
    if @fuel > trip
      take_trip(distance)
      @fuel -= trip
      "Done. Drove #{distance} miles."
    else
      "Not enough gas to drive that far."
    end
  end

  def take_trip(miles_left)
    until miles_left == 0
      sleep(1)
      @odometer += 1
      miles_left -= 1
      puts "Driving 1 mile ..."
    end
  end
end
