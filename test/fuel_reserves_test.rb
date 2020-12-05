require 'minitest/autorun'
require 'minitest/pride'
require './lib/fuel_reserves'

class FuelReservesTest < Minitest::Test
  def setup
    @fuel_reserves = FuelReserves.new
  end

  def test_it_exists
    assert_instance_of FuelReserves, @fuel_reserves
  end

  def test_it_can_have_default_reserve
    assert_equal 100, @fuel_reserves.reserve
  end

  def test_it_can_decrease_reserve
    @fuel_reserves.remove_fuel
    assert_equal 99, @fuel_reserves.reserve

    @fuel_reserves.remove_fuel
    assert_equal 98, @fuel_reserves.reserve
  end

  def test_it_can_check_reserve
    fuel_reserves = FuelReserves.new
    refute fuel_reserves.check_reserve?

    100.times do
      fuel_reserves.remove_fuel
    end
    assert fuel_reserves.check_reserve?
  end

  def test_it_cannot_have_negative_reserve
    fuel_reserves = FuelReserves.new
    100.times do
      fuel_reserves.remove_fuel
    end

    msg = "Sorry, there is no more fuel."

    assert_equal msg, fuel_reserves.remove_fuel
  end

end
