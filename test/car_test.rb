require 'minitest/autorun'
require 'minitest/pride'
require './lib/car'
require './lib/fuel_reserves'

class CarTest < Minitest::Test
  def setup
    @car = Car.new(3, 1)
    @fuel_reserves = FuelReserves.new
  end

  def test_it_can_add_fuel
    @car.add_fuel(@fuel_reserves)

    assert_equal 1, @car.fuel
  end

  def test_car_has_stats
    msg = "
    ----
    Odometer: 0.0
    Fuel: 0.0 gallons.
    MPG: 3.
    Fuel Capacity: 1.
    ----
    "

    assert_equal msg, @car.stats
  end

  def test_it_can_calcualte_gas_needed
    actual = @car.gas_needed(3)
    assert_equal 1, actual
  end

  def test_it_can_drive
    actual = @car.drive(30)
    msg = "Not enough gas to drive that far."

    assert_equal msg, actual

    @car.add_fuel(@fuel_reserves)

    actual = @car.drive(1)
    msg = "Done. Drove 1 miles."

    assert_equal msg, actual
  end
end
